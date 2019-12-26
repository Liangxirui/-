package edu.swjtuhc.demo.model;

public class SysUser {
	private int u_id;
	private String u_name;
	private String u_nickname;
	private String u_password;
	private String u_sex;
	private String u_email;
	private String u_phone;

	public String getU_email() {
		return u_email;
	}
	public void setU_email(String u_email) {
		this.u_email = u_email;
	}
	public String getU_phone() {
		return u_phone;
	}
	public void setU_phone(String u_phone) {
		this.u_phone = u_phone;
	}
	public String getUsername() {
		return u_name;
	}
	public void setUsername(String username) {
		this.u_name = username;
	}
	public String getPassword() {
		return u_password;
	}
	public void setPassword(String password) {
		this.u_password = password;
	}
	public String getName() {
		return u_nickname;
	}
	public void setName(String name) {
		this.u_nickname = name;
	}

	public String getGender() {
		return u_sex;
	}
	public void setGender(String gender) {
		this.u_sex = gender;
	}
	public int getUId() {
		return u_id;
	}
	public void setUId(int uId) {
		u_id = uId;
	}
	@Override
	public String toString() {
		return "SysUser [u_id=" + u_id + ", u_name=" + u_name + ", u_password=" + u_password + ", u_nickname="
				+ u_nickname + ", u_sex=" + u_sex + ", u_email=" + u_email + ", u_phone=" + u_phone
				+ "]";
	}
	
	
}