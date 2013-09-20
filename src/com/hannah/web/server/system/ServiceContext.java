package com.hannah.web.server.system;

import java.util.HashMap;
import java.util.Map;

/**
 * thread safe, to store client's variables
 * @author longrm
 * @date 2012-6-6
 */
public class ServiceContext {

	private static ThreadLocal _local = new ThreadLocal() {
		protected Object initialValue() {
			return new HashMap();
		}
	};

	public static void setProperty(Object key, Object value) {
		Map context = (Map) _local.get();
		context.put(key, value);
	}

	public static Object getProperty(Object key) {
		Map context = (Map) _local.get();
		return context.get(key);
	}

	public static void clear() {
		Map context = (Map) _local.get();
		if (context != null) {
			context.clear();
		}
	}
}
