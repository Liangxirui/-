package edu.swjtuhc.demo.model;

public class Order {
	public String customer;	
	public String total; 		
	public String number; 		
	public String comments; 		
	public String username;
	@Override
	public String toString() {
		return "Order [customer=" + customer + ", total=" + total + ", number=" + number + ", comments=" + comments
				+ ", username=" + username + "]";
	}
	public String getCustomer() {
		return customer;
	}
	public void setCustomer(String customer) {
		this.customer = customer;
	}
	public String getTotal() {
		return total;
	}
	public void setTotal(String total) {
		this.total = total;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}		

}
