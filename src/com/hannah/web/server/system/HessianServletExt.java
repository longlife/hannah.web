package com.hannah.web.server.system;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.caucho.hessian.io.AbstractHessianInput;
import com.caucho.hessian.io.AbstractHessianOutput;
import com.caucho.hessian.io.Hessian2Input;
import com.caucho.hessian.io.Hessian2Output;
import com.caucho.hessian.io.HessianInput;
import com.caucho.hessian.io.HessianOutput;
import com.caucho.hessian.io.SerializerFactory;
import com.caucho.hessian.server.HessianSkeleton;

/**
 * servlet-mapping in web.xml to receive the request and ...
 * @author longrm
 * @date 2012-6-6
 */
public class HessianServletExt extends HttpServlet implements Servlet {

	private static final long serialVersionUID = -1658078591921872934L;

	public HessianServletExt() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String pathInfo = request.getPathInfo();
		String serviceName = pathInfo.substring(1);

		AbstractHessianInput input = null;
		AbstractHessianOutput output = null;
		try {
			Object service = SpringContext.getBean(serviceName);

			HessianSkeleton homeSkeleton = new HessianSkeleton(service, service.getClass());
			InputStream is = request.getInputStream();
			OutputStream os = response.getOutputStream();
			response.setContentType("application/x-hessian");

			int code = is.read();
			int major;
			int minor;
			if (code == 'H') {
				major = is.read();
				minor = is.read();

				if (major != 0x02 || minor != 0x00)
					throw new IOException("Version " + major + "." + minor + " is not understood");

				input = new Hessian2Input(is);
				output = new Hessian2Output(os);

				input.readCall();
			} else if (code == 'c') {
				major = is.read();
				minor = is.read();

				input = new HessianInput(is);

				if (major >= 2)
					output = new Hessian2Output(os);
				else
					output = new HessianOutput(os);
			} else {
				throw new IOException(
						"expected 'H' (Hessian 2.0) or 'c' (Hessian 1.0) in hessian input at "
								+ code);
			}
			SerializerFactory serializerFactory = new SerializerFactory();
			input.setSerializerFactory(serializerFactory);
			output.setSerializerFactory(serializerFactory);
			homeSkeleton.invoke(input, output);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			output.close();
			input.close();
		}
	}
}