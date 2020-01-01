package com.example.demo.entity;

public class Admin {
	private String a_name;
	private String a_password;
	public String getA_name() {
		return a_name;
	}
	public void setA_name(String a_name) {
		this.a_name = a_name;
	}
	public String getA_password() {
		return a_password;
	}
	public void setA_password(String a_password) {
		this.a_password = a_password;
	}
	@Override
	public String toString() {
		return "Admin [a_name=" + a_name + ", a_password=" + a_password + "]";
	}
	
}
