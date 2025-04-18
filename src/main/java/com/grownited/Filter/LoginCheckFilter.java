
package com.grownited.Filter;

import java.io.IOException;
import java.util.ArrayList;

import org.springframework.stereotype.Component;

import com.grownited.entity.userentity;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
@Component
public class LoginCheckFilter implements Filter {
	ArrayList<String> publicURL = new ArrayList<>();

	public LoginCheckFilter() {
		publicURL.add("/login");
		publicURL.add("/signup");
		publicURL.add("/saveuser");
		publicURL.add("/forgetpassword");
		publicURL.add("/sendotp");
		publicURL.add("/authenticate");
		publicURL.add("/logout");
		publicURL.add("/updatepassword");		
		
		
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest requestHttp = (HttpServletRequest) request;
		String url = requestHttp.getRequestURI().toString();
		String uri = requestHttp.getRequestURI();
 
		
		System.out.println("Filter Call...." + uri);

		if (publicURL.contains(uri) || uri.contains(".css") || uri.contains(".js") || uri.contains("dist")
				|| uri.contains("images")) {
			chain.doFilter(requestHttp, response);// go Ahead
		} else {
			HttpSession session = requestHttp.getSession();
			userentity user = (userentity) session.getAttribute("user");

			if (user == null) {
				requestHttp.getRequestDispatcher("login").forward(request, response);
			} else {
				// already login
				// check url? amdin user

				// admin?
				if (uri.startsWith("/admin")||uri.startsWith("/list")||uri.startsWith("/view")||uri.startsWith("/edit")||uri.contains("hoarding")||uri.startsWith("/edit")) {
					if (user.getRole().equals("ADMIN")) {
						chain.doFilter(request, response);// go Ahead
					}else {
						requestHttp.getRequestDispatcher("login").forward(request, response);
					}
				} else {
					chain.doFilter(request, response);// go Ahead
				}
				// user role admin ?

			}
		}
		// go Ahead
	}
}
