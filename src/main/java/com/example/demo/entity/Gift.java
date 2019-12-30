package com.example.demo.entity;

public class Gift {
	private int g_id;
	private int g_price;
	private String g_name;
	private String g_picture;
	public int getG_id() {
		return g_id;
	}
	public void setG_id(int g_id) {
		this.g_id = g_id;
	}
	public int getG_price() {
		return g_price;
	}
	public void setG_price(int g_price) {
		this.g_price = g_price;
	}
	public String getG_name() {
		return g_name;
	}
	public void setG_name(String g_name) {
		this.g_name = g_name;
	}
	public String getG_picture() {
		return g_picture;
	}
	public void setG_picture(String g_picture) {
		this.g_picture = g_picture;
	}
	@Override
	public String toString() {
		return "Gift [g_id=" + g_id + ", g_price=" + g_price + ", g_name=" + g_name + ", g_picture=" + g_picture + "]";
	}

}
