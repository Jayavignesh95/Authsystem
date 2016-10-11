package com.app;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.googlecode.objectify.Objectify;
import com.googlecode.objectify.ObjectifyService;

public class LoginValidation extends HttpServlet{

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String loginId=req.getParameter("loginid");
		String pass=req.getParameter("pwd");
		PrintWriter out = resp.getWriter();
		Objectify ofy = ObjectifyService.ofy();
		ObjectifyService.register(UserDetails.class);
		boolean loginValid=false;
		List<UserDetails> ul = ofy.load().type(UserDetails.class).list();
		for (UserDetails ucheck : ul) {
			if (ucheck.getEmailID().equals(loginId)&&ucheck.getPassword().equals(pass)) {
				loginValid=true;
			}
			
		}
		if(loginValid==true)
		{
			out.println("Success");
			HttpSession session = req.getSession(true);
			session.setAttribute("name", loginId);
			session.setMaxInactiveInterval(5 * 60);
		}
		else
		{
			out.println("Failed");
		}
		
	}
}
