package fusion.data.model;

import java.util.Calendar;

public class OrderListVO {
	private int order_no;
	private Calendar order_date;
	private String represent_img;
	private String product_name;
	private int buy_num;
	private int charge;
	private String process_nm;
	private String mem_id;
	
	public OrderListVO(){}

	public OrderListVO(int order_no, Calendar order_date, String represent_img, String product_name, int buy_num,
			int charge, String process_nm, String mem_id) {
		super();
		this.order_no = order_no;
		this.order_date = order_date;
		this.represent_img = represent_img;
		this.product_name = product_name;
		this.buy_num = buy_num;
		this.charge = charge;
		this.process_nm = process_nm;
		this.mem_id = mem_id;
	}

	public int getOrder_no() {
		return order_no;
	}

	public void setOrder_no(int order_no) {
		this.order_no = order_no;
	}

	public Calendar getOrder_date() {
		return order_date;
	}

	public void setOrder_date(Calendar order_date) {
		this.order_date = order_date;
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

	public String getProcess_nm() {
		return process_nm;
	}

	public void setProcess_nm(String process_nm) {
		this.process_nm = process_nm;
	}

	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

}