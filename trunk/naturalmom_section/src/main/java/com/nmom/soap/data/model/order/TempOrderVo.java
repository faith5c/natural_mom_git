package com.nmom.soap.data.model.order;

public class TempOrderVo {
	private String represent_img;
	private String pruduct_name;
	private int buy_num;
	private int charge;
	
	public TempOrderVo() {}
	
	public TempOrderVo(String represent_img, String pruduct_name, int buy_num, int charge) {
		super();
		this.represent_img = represent_img;
		this.pruduct_name = pruduct_name;
		this.buy_num = buy_num;
		this.charge = charge;
	}

	public String getRepresent_img() {
		return represent_img;
	}

	public void setRepresent_img(String represent_img) {
		this.represent_img = represent_img;
	}

	public String getPruduct_name() {
		return pruduct_name;
	}

	public void setPruduct_name(String pruduct_name) {
		this.pruduct_name = pruduct_name;
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
}
