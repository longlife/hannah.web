package com.hannah.web.server.daoimpl;

import java.math.BigDecimal;
import java.sql.SQLException;
import java.util.List;

import org.springframework.orm.ibatis.SqlMapClientCallback;
import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

import com.hannah.web.server.dao.IBaseDao;
import com.ibatis.sqlmap.client.SqlMapExecutor;

public class BaseDaoImpl extends SqlMapClientDaoSupport implements IBaseDao {

	protected String nameSpace = "";

	public BaseDaoImpl() {
		super();
	}

	public void insert(Object obj) {
		String sqlId = nameSpace + "." + "insert";
		getSqlMapClientTemplate().insert(sqlId, obj);
	}

	public void insert(final List list) {
		this.getSqlMapClientTemplate().execute(new SqlMapClientCallback() {
			public Object doInSqlMapClient(SqlMapExecutor executor) throws SQLException {
				executor.startBatch();
				for (int i = 0; i < list.size(); i++) {
					executor.insert(nameSpace + ".insert", list.get(i));
				}
				executor.executeBatch();
				return null;
			}
		});
	}

	public int delete(Object obj) {
		String sqlId = nameSpace + "." + "delete";
		return getSqlMapClientTemplate().delete(sqlId, obj);
	}

	public void delete(final List list) {
		this.getSqlMapClientTemplate().execute(new SqlMapClientCallback() {
			public Object doInSqlMapClient(SqlMapExecutor executor) throws SQLException {
				executor.startBatch();
				for (int i = 0; i < list.size(); i++) {
					executor.delete(nameSpace + ".delete", list.get(i));
				}
				executor.executeBatch();
				return null;
			}
		});
	}

	public List select(Object obj) {
		String sqlId = nameSpace + "." + "select";
		return getSqlMapClientTemplate().queryForList(sqlId, obj);
	}

	public int selectCount(Object obj) {
		String sqlId = nameSpace + "." + "selectCount";
		BigDecimal bd = (BigDecimal) getSqlMapClientTemplate().queryForObject(sqlId, obj);
		return bd.intValue();
	}

	public List selectPagingData(Object obj) {
		String sqlId = nameSpace + "." + "selectPagingData";
		return getSqlMapClientTemplate().queryForList(sqlId, obj);
	}

	public int update(Object obj) {
		String sqlId = nameSpace + "." + "update";
		return getSqlMapClientTemplate().update(sqlId, obj);
	}

	public void update(final List list) {
		this.getSqlMapClientTemplate().execute(new SqlMapClientCallback() {
			public Object doInSqlMapClient(SqlMapExecutor executor) throws SQLException {
				executor.startBatch();
				for (int i = 0; i < list.size(); i++) {
					executor.update(nameSpace + ".update", list.get(i));
				}
				executor.executeBatch();
				return null;
			}
		});
	}

}
