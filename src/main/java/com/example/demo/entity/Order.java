package com.example.demo.entity;

public class Order {
	private int ord_id;
	private int u_id;
	private int o_id;
	private int ord_amount;
	private int ord_status;
	private String ord_addtime;
	public int getOrd_id() {
		return ord_id;
	}
	public void setOrd_id(int ord_id) {
		this.ord_id = ord_id;
	}
	public int getU_id() {
		return u_id;
	}
	public void setU_id(int u_id) {
		this.u_id = u_id;
	}
	public int getO_id() {
		return o_id;
	}
	public void setO_id(int o_id) {
		this.o_id = o_id;
	}
	public int getOrd_amount() {
		return ord_amount;
	}
	public void setOrd_amount(int ord_amount) {
		this.ord_amount = ord_amount;
	}
	public int getOrd_status() {
		return ord_status;
	}
	public void setOrd_status(int ord_status) {
		this.ord_status = ord_status;
	}
	public String getOrd_addtime() {
		return ord_addtime;
	}
	public void setOrd_addtime(String ord_addtime) {
		this.ord_addtime = ord_addtime;
	}
	@Override
	public String toString() {
		return "Order [ord_id=" + ord_id + ", u_id=" + u_id + ", o_id=" + o_id + ", ord_amount=" + ord_amount
				+ ", ord_status=" + ord_status + ", ord_addtime=" + ord_addtime + "]";
	}

}
