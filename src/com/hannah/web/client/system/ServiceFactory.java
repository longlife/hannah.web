package com.hannah.web.client.system;

import java.util.HashMap;
import java.util.Map;

import com.caucho.hessian.client.HessianProxyFactory;

/**
 * create hessian service
 * @author longrm
 * @date 2012-6-6
 */
public class ServiceFactory {

	private static Map<String, Object> remoteServiceMap = new HashMap<String, Object>();
	private static HessianProxyFactory factory;
	private static String webRoot = "http://127.0.0.1:7003/hannahlongrm";

	public static String getWebRoot() {
		return webRoot;
	}

	public static void setWebRoot(String webRoot) {
		ServiceFactory.webRoot = webRoot;
	}

	public static Object create(Class serviceClass, String serviceName) {
		Object service = null;

		if (factory == null) {
			factory = new HessianProxyFactory();
			factory.setOverloadEnabled(true);
		}

		try {
			if (remoteServiceMap.get(serviceName) == null) {
				String url = webRoot + "/hessianService/" + serviceName; // ?meta=....&token=.....
				service = factory.create(serviceClass, url);
				remoteServiceMap.put(serviceName, service);
			} else {
				service = remoteServiceMap.get(serviceName);
			}
		} catch (Exception ex) {
			throw new RuntimeException(ex.getMessage(), ex);
		}
		return service;
	}

}
