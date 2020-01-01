package com.example.demo.entity;

public class Object {
	private int o_id;
	private String o_name;
	private String o_nickname;
	private String o_password;
	private String o_sex;
	private String o_email;
	private String o_phone;
	private String o_type;
	public int getO_id() {
		return o_id;
	}
	public void setO_id(int o_id) {
		this.o_id = o_id;
	}
	public String getO_name() {
		return o_name;
	}
	public void setO_name(String o_name) {
		this.o_name = o_name;
	}
	public String getO_nickname() {
		return o_nickname;
	}
	public void setO_nickname(String o_nickname) {
		this.o_nickname = o_nickname;
	}
	public String getO_password() {
		return o_password;
	}
	public void setO_password(String o_password) {
		this.o_password = o_password;
	}
	public String getO_sex() {
		return o_sex;
	}
	public void setO_sex(String o_sex) {
		this.o_sex = o_sex;
	}
	public String getO_email() {
		return o_email;
	}
	public void setO_email(String o_email) {
		this.o_email = o_email;
	}
	public String getO_phone() {
		return o_phone;
	}
	public void setO_phone(String o_phone) {
		this.o_phone = o_phone;
	}
	public String getO_type() {
		return o_type;
	}
	public void setO_type(String o_type) {
		this.o_type = o_type;
	}
	@Override
	public String toString() {
		return "Object [o_id=" + o_id + ", o_name=" + o_name + ", o_nickname=" + o_nickname + ", o_password="
				+ o_password + ", o_sex=" + o_sex + ", o_email=" + o_email + ", o_phone=" + o_phone + ", o_type="
				+ o_type + "]";
	}

}
