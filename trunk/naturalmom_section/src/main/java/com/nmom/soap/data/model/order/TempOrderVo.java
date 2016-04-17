package com.nmom.soap.data.model.order;

public class TempOrderVo {
	private int product_no;
	private String represent_img;
	private String product_name;
	private int buy_num;
	private int charge;
	private int total_price;
	
	
	public TempOrderVo() {}

	//임시 주문 저장 시 
	public TempOrderVo(int product_no, String represent_img, String product_name, int buy_num, int charge) {
		super();
		this.product_no = product_no;
		this.represent_img = represent_img;
		this.product_name = product_name;
		this.buy_num = buy_num;
		this.charge = charge;
		this.total_price = 0;
	}
	
	//전체 생성자
	public TempOrderVo(int product_no, String represent_img, String product_name, int buy_num, int charge,
			int total_price) {
		super();
		this.product_no = product_no;
		this.represent_img = represent_img;
		this.product_name = product_name;
		this.buy_num = buy_num;
		this.charge = charge;
		this.total_price = total_price;
	}

	@Override
	public String toString() {
		return "TempOrderVo [product_no=" + product_no + ", represent_img=" + represent_img + ", product_name="
				+ product_name + ", buy_num=" + buy_num + ", charge=" + charge + ", total_price=" + total_price + "]";
	}

	public int getProduct_no() {
		return product_no;
	}
	
	public void setProduct_no(int product_no) {
		this.product_no = product_no;
	}
	
	public String getRepresent_img() {
		return represent_img;
	}

	public void setRepresent_img(String represent_img) {
		this.represent_img = represent_img;
	}

	public String getProduct_name() {
		return product_name;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}

	public int getBuy_num() {
		return buy_num;
	}

	public void setBuy_num(int buy_num) {
		this.buy_num = buy_num;
	}

	public int getCharge() {
		return charge;
	}

	public void setCharge(int charge) {
		this.charge = charge;
	}

	public int getTotal_price() {
		return charge*buy_num;
	}

	public void setTotal_price(int total_price) {
		this.total_price = total_price;
	}
}
