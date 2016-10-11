package com.app;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import com.google.appengine.api.datastore.*;
import com.googlecode.objectify.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Register extends HttpServlet {

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String rname = req.getParameter("rname");
		String rpassword = req.getParameter("rpwd");
		System.out.println("Entered the Registration srv " + rname);
		Objectify ofy = ObjectifyService.ofy();
		ObjectifyService.register(UserDetails.class);
		// UserDetails user =
		// ofy.load().type(com.app.UserDetails.class).first().now();
		List<UserDetails> ul = ofy.load().type(UserDetails.class).list();
		UserDetails user = new UserDetails();
		PrintWriter out = resp.getWriter();
		boolean isOldUser = false;
		// Checking for Existing User Nmae
		// UserDetails user1 =
		// ofy.load().type(UserDetails.class).filter("username",rname).first()
		// .now();
		System.out.println(ul.toString());
		if (ul.isEmpty()) {
			user = new UserDetails(rname, rpassword);
			ObjectifyService.register(UserDetails.class);
			ofy.save().entity(user).now();
			System.out.println(rname + rpassword);
			// ObjectifyService.ofy().save().entity(user).now();
			// ObjectifyService.ofy().save().entities("user").now();
			out.println("registration Succesfull");

		}
		for (UserDetails ucheck : ul) {
			if (ucheck.getEmailID().equals(rname)) {
				isOldUser = true;
			}
		}
		if (isOldUser == false) {
			user = new UserDetails(rname, rpassword);
			ObjectifyService.register(UserDetails.class);
			ofy.save().entity(user).now();
			System.out.println(rname + rpassword);
			out.println("registration Succesfull");
			HttpSession session = req.getSession(true);
			System.out.println(session.getId());
			session.setAttribute("name", rname);
			session.setMaxInactiveInterval(5 * 60);
			
		} else {
			out.println("User ALready Exists");
		}

	}
}
