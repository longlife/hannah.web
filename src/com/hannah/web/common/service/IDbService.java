package com.hannah.web.common.service;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

public interface IDbService {

	Map queryForMap(String sql) throws SQLException;

	Map queryForMap(Connection conn, String sql) throws SQLException;

	Map queryForMap(String sql, Object[] params) throws SQLException;

	Map queryForMap(Connection conn, String sql, Object[] params) throws SQLException;

	List queryForList(String sql) throws SQLException;

	List queryForList(Connection conn, String sql) throws SQLException;

	List queryForList(String sql, Object[] params) throws SQLException;

	/**
	 * @param conn
	 * @param sql
	 * @param params
	 * @return result list, each element is a map
	 * @throws SQLException
	 */
	List queryForList(Connection conn, String sql, Object[] params) throws SQLException;

	void executeSql(String sql) throws SQLException;

	void executeSql(Connection conn, String sql) throws SQLException;

	void executeSql(String sql, Object[] params) throws SQLException;

	/**
	 * execute one sql with params
	 * @param conn
	 * @param sql
	 * @param params
	 * @throws SQLException
	 */
	void executeSql(Connection conn, String sql, Object[] params) throws SQLException;

	void executeSql(String sql, List paramList) throws SQLException;

	/**
	 * execute one sql with param list
	 * @param conn
	 * @param sql
	 * @param paramList
	 * @throws SQLException
	 */
	void executeSql(Connection conn, String sql, List paramList) throws SQLException;

	void executeSql(List sqlList, List multiParamList) throws SQLException;

	/**
	 * execute multi sqls with multi param list
	 * @param conn
	 * @param sqlList
	 * @param multiParamList
	 * @throws SQLException
	 */
	void executeSql(Connection conn, List sqlList, List multiParamList) throws SQLException;

	/**
	 * insert rs'data into table
	 * @param conn
	 * @param table
	 * @param rs
	 * @throws SQLException
	 */
	void insertTable(Connection conn, String table, ResultSet rs) throws SQLException;

}
