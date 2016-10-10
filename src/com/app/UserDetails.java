package com.app;
import com.googlecode.objectify.*;
import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;
@Entity
class UserDetails {
@Id
private String emailID;
private String password;
public String getEmailID() {
	return emailID;
}
public void setEmailID(String emailID) {
	this.emailID = emailID;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
UserDetails(String mail,String pwd)
{
	System.out.println("Prinitng from User Servlet"+mail);
	emailID=mail;
	password=pwd;
}
public UserDetails() {
	// TODO Auto-generated constructor stub
}
}
