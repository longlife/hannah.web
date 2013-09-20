package com.hannah.web.server.system;

import java.sql.Connection;
import java.sql.SQLException;

import javax.sql.DataSource;

public class DaoFactory {

	private static DaoFactory factory = new DaoFactory();

	private DaoFactory() {
	}

	public static DaoFactory getInstance() {
		return factory;
	}

	public DataSource getDataSource() {
		return (DataSource) SpringContext.getBean("dataSource");
	}
	
//	public DataSource getDataSource() throws NamingException {
//		Hashtable ht = new Hashtable();
//		ht.put(Context.INITIAL_CONTEXT_FACTORY, "weblogic.jndi.WLInitialContextFactory");
//		ht.put(Context.PROVIDER_URL, "t3://localhost:7001");
//		Context context = new InitialContext(ht);
//
//		// 注意：lookup 中的参数 是你在weblogic中配置的JNDI名称
//		DataSource ds = (DataSource) context.lookup("**");
//		return ds;
//	}

	public Connection getConnection() throws SQLException {
		return getDataSource().getConnection();
	}

}
