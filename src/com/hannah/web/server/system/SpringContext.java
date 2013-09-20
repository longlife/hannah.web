package com.hannah.web.server.system;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.util.Assert;

public class SpringContext {

	private static ApplicationContext _context = null;

	/**
	 * local test
	 */
	public static void setSpringContext() {
		try {
			if (_context == null) {
				_context = new ClassPathXmlApplicationContext("...");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	public static void setSpringContext(ApplicationContext context) {
		_context = context;
	}

	public static Object getBean(String beanName) {
		Assert.notNull(_context, "Spring context is null");
		return _context.getBean(beanName);
	}

}
