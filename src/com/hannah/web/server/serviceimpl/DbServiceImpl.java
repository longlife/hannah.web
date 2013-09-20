package com.hannah.web.server.serviceimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.hannah.common.util.DbUtil;
import com.hannah.web.common.service.IDbService;
import com.hannah.web.server.system.DaoFactory;

/**
 * @author longrm
 * @date 2012-12-12
 */
public class DbServiceImpl implements IDbService {

	private static final int BATCH_COUNT = 1000;

	public Map queryForMap(String sql) throws SQLException {
		return queryForMap(null, sql, new Object[] {});
	}

	public Map queryForMap(Connection conn, String sql) throws SQLException {
		return queryForMap(conn, sql, new Object[] {});
	}

	public Map queryForMap(String sql, Object[] params) throws SQLException {
		return queryForMap(null, sql, params);
	}

	public Map queryForMap(Connection conn, String sql, Object[] params) throws SQLException {
		List list = queryForList(conn, sql, params);
		if (list.size() > 0)
			return (Map) list.get(0);
		else
			return new HashMap();
	}

	public List queryForList(String sql) throws SQLException {
		return queryForList(null, sql, new Object[] {});
	}

	public List queryForList(Connection conn, String sql) throws SQLException {
		return queryForList(conn, sql, new Object[] {});
	}

	public List queryForList(String sql, Object[] params) throws SQLException {
		return queryForList(null, sql, params);
	}

	public List queryForList(Connection conn, String sql, Object[] params) throws SQLException {
		boolean hasConn = (conn != null);
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = hasConn ? conn : DaoFactory.getInstance().getConnection();
			pstmt = conn.prepareStatement(sql);
			DbUtil.setStatementParameters(pstmt, params);
			rs = pstmt.executeQuery();
			return DbUtil.convertResultSetToList(rs);
		} catch (SQLException sqle) {
			throw sqle;
		} finally {
			if (hasConn)
				DbUtil.closeConnection(null, pstmt, rs);
			else
				DbUtil.closeConnection(conn, pstmt, rs);
		}
	}

	public void executeSql(String sql) throws SQLException {
		executeSql(null, sql, new Object[] {});
	}

	public void executeSql(Connection conn, String sql) throws SQLException {
		executeSql(conn, sql, new Object[] {});
	}

	public void executeSql(String sql, Object[] params) throws SQLException {
		executeSql(null, sql, params);
	}

	public void executeSql(Connection conn, String sql, Object[] params) throws SQLException {
		boolean hasConn = (conn != null);
		PreparedStatement pstmt = null;
		try {
			conn = hasConn ? conn : DaoFactory.getInstance().getConnection();
			pstmt = conn.prepareStatement(sql);
			DbUtil.setStatementParameters(pstmt, params);
			pstmt.execute();
		} catch (SQLException sqle) {
			throw sqle;
		} finally {
			if (hasConn)
				DbUtil.closeConnection(null, pstmt, null);
			else
				DbUtil.closeConnection(conn, pstmt, null);
		}
	}

	public void executeSql(String sql, List paramList) throws SQLException {
		executeSql(null, sql, paramList);
	}

	public void executeSql(Connection conn, String sql, List paramList) throws SQLException {
		boolean hasConn = (conn != null);
		PreparedStatement pstmt = null;
		try {
			conn = hasConn ? conn : DaoFactory.getInstance().getConnection();
			conn.setAutoCommit(false);
			pstmt = conn.prepareStatement(sql);
			int count = 0;
			for (int i = 0; i < paramList.size(); i++) {
				Object params = paramList.get(i);
				if (params instanceof List) {
					DbUtil.setStatementParameters(pstmt, ((List) params).toArray());
				} else if (params instanceof Object[]) {
					DbUtil.setStatementParameters(pstmt, (Object[]) params);
				} else {
					throw new SQLException("Params is error!");
				}
				pstmt.addBatch();
				count++;
				if (count % BATCH_COUNT == 0)
					pstmt.executeBatch();
			}
			if (count % BATCH_COUNT != 0)
				pstmt.executeBatch();
			conn.commit();
			conn.setAutoCommit(true);
		} catch (SQLException sqle) {
			throw sqle;
		} finally {
			if (hasConn)
				DbUtil.closeConnection(null, pstmt, null);
			else
				DbUtil.closeConnection(conn, pstmt, null);
		}
	}

	public void executeSql(List sqlList, List multiParamList) throws SQLException {
		executeSql(null, sqlList, multiParamList);
	}

	public void executeSql(Connection conn, List sqlList, List multiParamList) throws SQLException {
		if (multiParamList != null && sqlList.size() != multiParamList.size())
			throw new SQLException("Sql's length is not equal to params length!");

		for (int i = 0; i < sqlList.size(); i++) {
			String sql = (String) sqlList.get(i);
			Object params = multiParamList == null ? null : multiParamList.get(i);
			if (params == null) {
				executeSql(conn, sql);
			} else if (params instanceof List) {
				executeSql(conn, sql, (List) params);
			} else if (params instanceof Object[]) {
				executeSql(conn, sql, (Object[]) params);
			}
		}
	}

	public void insertTable(Connection conn, String table, ResultSet rs) throws SQLException {
		// 拼insert语句
		ResultSetMetaData rsmd = rs.getMetaData();
		int columnCount = rsmd.getColumnCount();
		StringBuffer columnsSql = new StringBuffer();
		StringBuffer paramsSql = new StringBuffer();
		for (int i = 1; i <= columnCount; i++) {
			columnsSql.append(rsmd.getColumnName(i) + ",");
			paramsSql.append("?,");
		}
		String insertSql = "insert into " + table + "("
				+ columnsSql.substring(0, columnsSql.length() - 1) + ") values("
				+ paramsSql.substring(0, paramsSql.length() - 1) + ")";
		// 将数据写入
		List paramList = new ArrayList();
		while (rs.next()) {
			Object[] params = new Object[columnCount];
			for (int k = 1; k <= columnCount; k++)
				params[k - 1] = rs.getObject(k);
			paramList.add(params);
		}
		executeSql(conn, insertSql, paramList);
	}

}
