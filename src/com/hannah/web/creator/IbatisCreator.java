package com.hannah.web.creator;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.hannah.common.util.DbUtil;
import com.hannah.common.util.FileUtil;
import com.hannah.common.util.StringUtil;

/**
 * model、ibatis map、dao、service auto creator
 * @author longrm
 * @date 2012-6-11
 */
public class IbatisCreator {

	private String dbType;
	private Connection conn;
	private String directoryPath;
	private boolean autoClassify;
	private boolean addDbComments;
	private String scheme;
	private String table;
	private String className;
	private String packageName;

	private List<Map> tableMetaData;
	private Map<String, String> columnCommentsMap;
	private List<Map> primaryKes;

	public String getDbType() {
		return dbType;
	}

	public void setDbType(String dbType) {
		this.dbType = dbType;
	}

	public Connection getConn() {
		return conn;
	}

	public void setConn(Connection conn) {
		this.conn = conn;
	}
	
	public boolean isAutoClassify() {
		return autoClassify;
	}
	
	public void setAutoClassify(boolean autoClassify) {
		this.autoClassify = autoClassify;
	}

	public boolean isAddDbComments() {
		return addDbComments;
	}

	public void setAddDbComments(boolean addDbComments) {
		this.addDbComments = addDbComments;
	}

	public String getScheme() {
		return scheme;
	}

	public void setScheme(String scheme) {
		this.scheme = scheme;
	}

	public String getTable() {
		return table;
	}

	public void setTable(String table) {
		this.table = table;
		className = StringUtil.columnToProperty(table);
		className = StringUtil.toFirstUpperCase(className);
	}

	public String getPackageName() {
		return packageName;
	}

	public void setPackageName(String packageName) {
		this.packageName = packageName;
		directoryPath = "src\\" + packageName.replaceAll("\\.", "\\\\") + "\\";
	}

	public String initData() throws SQLException {
		tableMetaData = DbUtil.queryTableMetaData(conn, table);
		// 列备注
		List<Map> columnComments = DbUtil.queryColumnComments(conn, dbType, table);
		if (columnComments != null) {
			columnCommentsMap = new HashMap<String, String>();
			for (Map map : columnComments)
				columnCommentsMap.put((String)map.get("COLUMN_NAME"), (String)map.get("COMMENTS"));
		}
		primaryKes = DbUtil.queryPrimaryKeys(conn, null, scheme, table);
		if (tableMetaData.size() == 0)
			throw new SQLException("table not exsits, please check database connection and tablename!");
		else if (primaryKes.size() == 0)
			return "No Primary Key Found!";
		else {
			String pkName = (String)(primaryKes.get(0)).get("PK_NAME");
			pkName = pkName == null ? "PK_" + table : pkName;
			String keysMessage = "Primary Keys: [" + pkName + "] ";
			for (int i = 0; i < primaryKes.size(); i++)
				keysMessage += (String)(primaryKes.get(0)).get("COLUMN_NAME") + ", ";
			return keysMessage.substring(0, keysMessage.length()-2);
		}
	}

	public static final String TEMPLATE_MODEL = "package @PACKAGE_NAME;\n\n"
			+ "import java.io.Serializable;@ADDITIONAL_IMPORTS\n\n"
			+ "public class @CLASS_NAME implements Serializable {\n\n" 
			+ "@PROPERTIES_GET_SET"
			+ "}";

	public String createModel() throws IOException {
		String packageName = autoClassify ? this.packageName + ".common.model" : this.packageName;
		String directoryPath = autoClassify ? this.directoryPath + "common\\model\\" : this.directoryPath;
		
		String addImports = "";
		StringBuffer properties = new StringBuffer();
		StringBuffer getSets = new StringBuffer();
		for (Map column : tableMetaData) {
			String columnName = (String)column.get("COLUMN_NAME");
			String columnTypeName = (String)column.get("COLUMN_TYPE_NAME");
			String columnClassName = getColumnClassName(column);
			String propertyName = StringUtil.columnToProperty(columnName);
			
			int index = columnClassName.lastIndexOf(".");
			String javaType = columnClassName.substring(index+1);
			if ("Integer".equals(javaType))
				javaType = "int";

			if (!columnClassName.startsWith("java.lang") && addImports.indexOf(columnClassName) == -1)
				addImports += "\nimport " + columnClassName + ";";
			
			if(addDbComments) {
				if (columnCommentsMap == null || columnCommentsMap.get(columnName) == null)
					properties.append("	private " + javaType + " " + propertyName + ";	// " + columnTypeName + "\n");
				else
					properties.append("	private " + javaType + " " + propertyName + ";	// " 
							+ columnTypeName + "	" + columnCommentsMap.get(columnName) + "\n");
			} else {
				properties.append("	private " + javaType + " " + propertyName + ";\n");
			}
			
			getSets.append("	public " + javaType + " get"
					+ StringUtil.toFirstUpperCase(propertyName) + "() {\n" 
					+ "		return " + propertyName + ";\n" 
					+ "	}\n\n");
			getSets.append("	public void set" + StringUtil.toFirstUpperCase(propertyName) + "("
					+ javaType + " " + propertyName + ") {\n" 
					+ "		this." + propertyName + " = " + propertyName + ";\n" 
					+ "	}\n\n");
		}

		String modelContext = TEMPLATE_MODEL.replaceFirst("@PACKAGE_NAME", packageName);
		modelContext = modelContext.replaceFirst("@ADDITIONAL_IMPORTS", addImports);
		modelContext = modelContext.replaceFirst("@CLASS_NAME", className);
		modelContext = modelContext.replaceFirst("@PROPERTIES_GET_SET",
				properties.append("\n").append(getSets).toString());

		String filePath = directoryPath + className + ".java";
		File modelFile = new File(filePath);
		if (!modelFile.exists() && !modelFile.createNewFile())
			return "File " + filePath + " create failed!";
		FileUtil.writeText(modelFile, modelContext);
		return modelContext;
	}

	public static final String TEMPLATE_IBATIS_MAP = "<?xml version=\"1.0\" encoding=\"UTF-8\" ?>\n"
			+ "<!DOCTYPE sqlMap PUBLIC \"-//ibatis.apache.org//DTD SQL Map 2.0//EN\"" 
			+ " \"http://ibatis.apache.org/dtd/sql-map-2.dtd\" >\n\n"
			+ "<sqlMap namespace=\"@TABLE_NAME\">\n\n"
			+ "	<resultMap id=\"@RESULT_MAP_ID\" class=\"@CLASS_PATH\">\n"
			+ "@COLUMNS_PROPERTIES"
			+ "	</resultMap>\n\n" 
			+ "@STATEMENTS"
			+ "</sqlMap>";

	public static final String TEMPLATE_SELECT = 
			"		select * from @TABLE_NAME\n"
			+ "		<dynamic prepend=\"where\">\n"
			+ "@SELECT_CONDITION" 
			+ "		</dynamic>\n";
	
	public static final String TEMPLATE_IBATIS_SELECT = 
			"	<select id=\"select\" resultMap=\"@RESULT_MAP_ID\" parameterClass=\"java.util.Map\">\n"
			+ TEMPLATE_SELECT
			+ "	</select>\n\n";
	
	public static final String TEMPLATE_IBATIS_SELECT_COUNT = 
			"	<select id=\"selectCount\" resultClass=\"java.math.BigDecimal\" parameterClass=\"java.util.Map\">\n"
					+ TEMPLATE_SELECT.replaceFirst("\\*", "count(1)")
					+ "	</select>\n\n";

	public static final String TEMPLATE_IBATIS_SELECT_PAGING = 
			"	<select id=\"selectPagingData\" resultMap=\"@RESULT_MAP_ID\" parameterClass=\"java.util.Map\">\n"
			+ "@SELECT_PAGING"
			+ "	</select>\n\n";

	public static final String TEMPLATE_IBATIS_INSERT = 
			"	<insert id=\"insert\" parameterClass=\"@CLASS_PATH\">\n"
			+ "		insert into @TABLE_NAME (@ALL_COLUMNS)\n"
			+ "		values (@ALL_PROPERTIES)\n"
			+ "	</insert>\n\n";

	public static final String TEMPLATE_IBATIS_DELETE = 
			"	<delete id=\"delete\" parameterClass=\"@CLASS_PATH\">\n"
			+ "		delete from @TABLE_NAME where @KEY_CONDITION\n" 
			+ "	</delete>\n\n";

	public static final String TEMPLATE_IBATIS_UPDATE = 
			"	<update id=\"update\" parameterClass=\"@CLASS_PATH\">\n"
			+ "		update @TABLE_NAME set @SET_COLUMNS_VALUE\n"
			+ "		where @KEY_CONDITION\n"
			+ "	</update>\n\n";

	public String createIbatisMap() throws IOException {
		String packageName = autoClassify ? this.packageName + ".common.model" : this.packageName;
		String directoryPath = autoClassify ? this.directoryPath + "server\\config\\ibatis\\" : this.directoryPath;

		String resultMapId = StringUtil.columnToProperty(table) + "Result";
		String classPath = packageName + "." + className;
		
		StringBuffer columnsProperties = new StringBuffer();
		StringBuffer selectCondition = new StringBuffer();
		StringBuffer allCondition = new StringBuffer();
		StringBuffer allColumns = new StringBuffer();
		StringBuffer allProperties = new StringBuffer();
		StringBuffer setColumnsValue = new StringBuffer();
		List<String> keyColumns = new ArrayList<String>();
		// get primary key rather than unique key
		if (primaryKes.size() > 0) {
			for (int i = 0; i < primaryKes.size(); i++)
				keyColumns.add((String)(primaryKes.get(i)).get("COLUMN_NAME"));
		}
		// loop all columns
		for (Map column : tableMetaData) {
			String columName = (String) column.get("COLUMN_NAME");
			String property = StringUtil.columnToProperty(columName);
			columnsProperties.append("		<result column=\"" + columName + "\"" +
					" property=\"" + property + "\"" +
					" jdbcType=\"" + getColumnTypeName(column) + "\" />\n");
			selectCondition.append(
					"			<isNotNull prepend=\"and\" property=\"" + property + "\" >\n" +
					"				" + columName + " = #" + property + "#\n" +
					"			</isNotNull>\n");
			allCondition.append(allCondition.length() == 0 ? "" : " and ");
			allCondition.append(columName + " = #" + property + "#");
			allColumns.append(allColumns.length() == 0 ? "" : ", ").append(columName);
			allProperties.append(allProperties.length() == 0 ? "" : ", ").append("#" + property + "#");
			// set all columns which is not key column
			if (keyColumns != null) {
				boolean isKeyColumn = false;
				for (String keyColumn : keyColumns) {
					if (keyColumn.equals(columName)) {
						isKeyColumn = true;
						break;
					}
				}
				if (!isKeyColumn) {
					setColumnsValue.append(setColumnsValue.length() == 0 ? "" : ", ");
					setColumnsValue.append(columName + " = #" + property + "#");
				}
			}
		}
		// loop key columns
		StringBuffer keyCondition = new StringBuffer();
		if (keyColumns != null) {
			for (String keyColumn : keyColumns) {
				keyCondition.append(keyCondition.length() == 0 ? "" : " and ");
				keyCondition.append(keyColumn + " = #" + StringUtil.columnToProperty(keyColumn) + "#");
			}
		}
		
		StringBuffer statements = new StringBuffer();
		// select statement
		String selectStatement = TEMPLATE_IBATIS_SELECT;
		statements.append(selectStatement);
		// select count statemenet
		String selectCountStatement = TEMPLATE_IBATIS_SELECT_COUNT;
		statements.append(selectCountStatement);
		// select paging statement
		String selectPaging = DbUtil.getSelectPagingSql(dbType, "\n" + TEMPLATE_SELECT, "#startRow#", "#count#");
		selectPaging = selectPaging.replaceFirst("<=", "&lt;=").replaceFirst(">=", "&gt;=") + "\n";
		String selectPagingStatement = TEMPLATE_IBATIS_SELECT_PAGING.replaceFirst("@SELECT_PAGING", selectPaging);
		statements.append(selectPagingStatement);
		// insert statement
		String insertStatement = TEMPLATE_IBATIS_INSERT;
		statements.append(insertStatement);
		// delete statement
		String deleteStatement = TEMPLATE_IBATIS_DELETE;
		statements.append(deleteStatement);
		// update statement
		if (primaryKes.size() > 0) {
			String updateStatement = TEMPLATE_IBATIS_UPDATE;
			statements.append(updateStatement);
		}
		
		String ibatisMapContext = TEMPLATE_IBATIS_MAP.replaceFirst("@STATEMENTS", statements.toString());
		ibatisMapContext = ibatisMapContext.replaceAll("@TABLE_NAME", table);
		ibatisMapContext = ibatisMapContext.replaceAll("@RESULT_MAP_ID", resultMapId);
		ibatisMapContext = ibatisMapContext.replaceAll("@CLASS_PATH", classPath);
		ibatisMapContext = ibatisMapContext.replaceFirst("@COLUMNS_PROPERTIES", columnsProperties.toString());
		ibatisMapContext = ibatisMapContext.replaceAll("@SELECT_CONDITION", selectCondition.toString());
		ibatisMapContext = ibatisMapContext.replaceFirst("@ALL_COLUMNS", allColumns.toString());
		ibatisMapContext = ibatisMapContext.replaceFirst("@ALL_PROPERTIES", allProperties.toString());
		ibatisMapContext = ibatisMapContext.replaceAll("@KEY_CONDITION", 
				keyCondition.length() == 0 ? allCondition.toString() : keyCondition.toString());
		ibatisMapContext = ibatisMapContext.replaceFirst("@SET_COLUMNS_VALUE", setColumnsValue.toString());
		
		String filePath = directoryPath + table + ".xml";
		File ibatisMapFile = new File(filePath);
		if (!ibatisMapFile.exists() && !ibatisMapFile.createNewFile())
			return "File " + filePath + " create failed!";
		FileUtil.writeText(ibatisMapFile, ibatisMapContext);
		
		String mapPath = filePath.substring(filePath.indexOf("\\") + 1).replaceAll("\\\\", "/");
		String configContext = "	<sqlMap resource=\"" + mapPath + "\" />";
		return ibatisMapContext + "\n\n" + configContext;
	}
	
	/**
	 * 获取列类型
	 * @param column
	 * @return
	 */
	public static String getColumnClassName(Map column) {
		String columnClassName = (String)column.get("COLUMN_CLASS_NAME");
		int index = columnClassName.lastIndexOf(".");
		String javaType = columnClassName.substring(index+1);
		
		if ("BigDecimal".equals(javaType)) {
			Integer precision = (Integer)column.get("PRECISION");
			// 长度0~10之间，小数位为0时，取int类型
			if (precision > 0 && precision < 10 && (Integer)column.get("SCALE") <= 0)
				columnClassName = "java.lang.Integer";
		} else if (!columnClassName.startsWith("java.") || columnClassName.startsWith("java.sql.")) {
			String columnTypeName = (String)column.get("COLUMN_TYPE_NAME");
			if (columnTypeName.equals("DATE"))
				columnClassName = "java.util.Date";
			else if (columnTypeName.equals("TIMESTAMP"))
				columnClassName = "java.sql.Timestamp";
		}
		return columnClassName;
	}
	
	public static String getColumnTypeName(Map column) {
		String columnTypeName = (String)column.get("COLUMN_TYPE_NAME");
		if ("NUMBER".equals(columnTypeName)) {
			Integer precision = (Integer)column.get("PRECISION");
			// 长度0~10之间，小数位为0时，取int类型
			if (precision > 0 && precision < 10 && (Integer)column.get("SCALE") <= 0)
				columnTypeName = "INTEGER";
		}
		return columnTypeName;
	}

	public static final String TEMPLATE_DAO_IMPLEMENT = "package @PACKAGE_NAME;\n\n"
			+ "public class @DAO_IMPLEMENT_CLASS_NAME extends BaseDaoImpl {\n\n"
			+ "	public @DAO_IMPLEMENT_CLASS_NAME() {\n" 
			+ "		super();\n"
			+ "		this.nameSpace = \"@TABLE_NAME\";\n" 
			+ "	}\n\n" 
			+ "}";

	public String createDaoImplement() throws IOException {
		String packageName = autoClassify ? this.packageName + ".server.daoimpl" : this.packageName;
		String directoryPath = autoClassify ? this.directoryPath + "server\\daoimpl\\" : this.directoryPath;

		String daoImplClassName = className + "DaoImpl";
		String daoImplContext = TEMPLATE_DAO_IMPLEMENT.replaceFirst("@PACKAGE_NAME", packageName);
		daoImplContext = daoImplContext.replaceAll("@DAO_IMPLEMENT_CLASS_NAME", daoImplClassName);
		daoImplContext = daoImplContext.replaceFirst("@TABLE_NAME", table);
		
		String filePath = directoryPath + daoImplClassName + ".java";
		File daoImplFile = new File(filePath);
		if (!daoImplFile.exists() && !daoImplFile.createNewFile())
			return "File " + filePath + " create failed!";
		FileUtil.writeText(daoImplFile, daoImplContext);
		
		String configContext = "	<bean id=\"" + StringUtil.columnToProperty(table) + "Dao\"" +
				" class=\"" + packageName + "." + daoImplClassName + "\" parent=\"baseDao\" />";
		return daoImplContext + "\n\n" + configContext;
	}

	public static final String TEMPLATE_SERVICE_INTERFACE = "package @PACKAGE_NAME;\n\n"
			+ "public interface @SERVICE_INTERFACE_CLASS_NAME extends IBaseService {\n\n"
			+ "}";

	public String createServiceInterface() throws IOException {
		String packageName = autoClassify ? this.packageName + ".common.service" : this.packageName;
		String directoryPath = autoClassify ? this.directoryPath + "common\\service\\" : this.directoryPath;
		
		String interfaceClassName = "I" + className + "Service";
		String interfaceContext = TEMPLATE_SERVICE_INTERFACE.replaceFirst("@PACKAGE_NAME", packageName);
		interfaceContext = interfaceContext.replaceFirst("@SERVICE_INTERFACE_CLASS_NAME", interfaceClassName);
		
		String filePath = directoryPath + interfaceClassName + ".java";
		File daoImplFile = new File(filePath);
		if (!daoImplFile.exists() && !daoImplFile.createNewFile())
			return "File " + filePath + " create failed!";
		FileUtil.writeText(daoImplFile, interfaceContext);
		return interfaceContext;
	}
	
	public static final String TEMPLATE_SERVICE_IMPLEMENT = "package @PACKAGE_NAME;\n\n"
			+ "import @SERVICE_INTERFACE_CLASS_PATH;\n\n"
			+ "public class @SERVICE_IMPLEMENT_CLASS_NAME extends BaseServiceImpl"
			+ " implements @SERVICE_INTERFACE_CLASS_NAME {\n\n"
			+ "}";
	
	public String createServiceImplement() throws IOException {
		String packageName = autoClassify ? this.packageName + ".server.serviceimpl" : this.packageName;
		String directoryPath = autoClassify ? this.directoryPath + "server\\serviceimpl\\" : this.directoryPath;
		
		String implementClassName = className + "ServiceImpl";
		String interfaceClassName = "I" + className + "Service";
		String interfaceClassPath = (autoClassify ? this.packageName + ".common.service" : this.packageName)
				+ "." + interfaceClassName;
		String implementContext = TEMPLATE_SERVICE_IMPLEMENT.replaceFirst("@PACKAGE_NAME", packageName);
		implementContext = implementContext.replaceFirst("@SERVICE_INTERFACE_CLASS_PATH", interfaceClassPath);
		implementContext = implementContext.replaceFirst("@SERVICE_IMPLEMENT_CLASS_NAME", implementClassName);
		implementContext = implementContext.replaceFirst("@SERVICE_INTERFACE_CLASS_NAME", interfaceClassName);
		
		String filePath = directoryPath + implementClassName + ".java";
		File daoImplFile = new File(filePath);
		if (!daoImplFile.exists() && !daoImplFile.createNewFile())
			return "File " + filePath + " create failed!";
		FileUtil.writeText(daoImplFile, implementContext);
		
		String classAlias = StringUtil.columnToProperty(table);
		String configContext = "	<bean id=\"" + classAlias + "Service\"" +
				" class=\"" + packageName + "." + implementClassName + "\" scope=\"singleton\">\n" +
				"		<property name=\"baseDao\" ref=\"" + classAlias + "Dao\" />\n" +
				"	</bean>";
		return implementContext + "\n\n" + configContext;
	}

	public String createService() throws IOException {
		return createServiceInterface() + "\n\n" + createServiceImplement();
	}

}
