package com.hannah.web.server.system;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.springframework.context.ApplicationContext;
import org.springframework.web.context.ContextLoaderListener;
import org.springframework.web.context.support.WebApplicationContextUtils;

/**
 * listener in web.xml to initialize spring config
 * @author longrm
 * @date 2012-6-6
 */
public class ContextLoaderListenerExt extends ContextLoaderListener implements
		ServletContextListener {

	public void contextInitialized(ServletContextEvent arg0) {
		super.contextInitialized(arg0);
		ApplicationContext context = WebApplicationContextUtils.getWebApplicationContext(arg0
				.getServletContext());
		SpringContext.setSpringContext(context);
	}

}
