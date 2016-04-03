package fusion.data.model;

import java.util.Calendar;

public class OrderVO {
	private int order_no;
	private Calendar order_date;
	private int charge;
	private String credit_num;
	private String credit_exp;
	private String rcv_name;
	private String rcv_phone;
	private String rcv_addr_post;
	private String rcv_addr_detail;
	private String delivery_msg;
	private int tracking_num;
	private int credit_cd;
	private int delivery_com_cd;
	private String mem_id;

	public OrderVO(){}

	//주문시 필요한 필드들만
	public OrderVO(int charge, String credit_num, String credit_exp, String rcv_name, String rcv_phone,
			String rcv_addr_post, String rcv_addr_detail, String delivery_msg, int tracking_num, int credit_cd,
			int delivery_com_cd, String mem_id) {
		this.charge = charge;
		this.credit_num = credit_num;
		this.credit_exp = credit_exp;
		this.rcv_name = rcv_name;
		this.rcv_phone = rcv_phone;
		this.rcv_addr_post = rcv_addr_post;
		this.rcv_addr_detail = rcv_addr_detail;
		this.delivery_msg = delivery_msg;
		this.tracking_num = tracking_num;
		this.credit_cd = credit_cd;
		this.delivery_com_cd = delivery_com_cd;
		this.mem_id = mem_id;
	}

	//전체
	public OrderVO(int order_no, Calendar order_date, int charge, String credit_num, String credit_exp, String rcv_name,
			String rcv_phone, String rcv_addr_post, String rcv_addr_detail, String delivery_msg, int tracking_num,
			int credit_cd, int delivery_com_cd, String mem_id) {
		this.order_no = order_no;
		this.order_date = order_date;
		this.charge = charge;
		this.credit_num = credit_num;
		this.credit_exp = credit_exp;
		this.rcv_name = rcv_name;
		this.rcv_phone = rcv_phone;
		this.rcv_addr_post = rcv_addr_post;
		this.rcv_addr_detail = rcv_addr_detail;
		this.delivery_msg = delivery_msg;
		this.tracking_num = tracking_num;
		this.credit_cd = credit_cd;
		this.delivery_com_cd = delivery_com_cd;
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

	public int getCharge() {
		return charge;
	}

	public void setCharge(int charge) {
		this.charge = charge;
	}

	public String getCredit_num() {
		return credit_num;
	}

	public void setCredit_num(String credit_num) {
		this.credit_num = credit_num;
	}

	public String getCredit_exp() {
		return credit_exp;
	}

	public void setCredit_exp(String credit_exp) {
		this.credit_exp = credit_exp;
	}

	public String getRcv_name() {
		return rcv_name;
	}

	public void setRcv_name(String rcv_name) {
		this.rcv_name = rcv_name;
	}

	public String getRcv_phone() {
		return rcv_phone;
	}

	public void setRcv_phone(String rcv_phone) {
		this.rcv_phone = rcv_phone;
	}

	public String getRcv_addr_post() {
		return rcv_addr_post;
	}

	public void setRcv_addr_post(String rcv_addr_post) {
		this.rcv_addr_post = rcv_addr_post;
	}

	public String getRcv_addr_detail() {
		return rcv_addr_detail;
	}

	public void setRcv_addr_detail(String rcv_addr_detail) {
		this.rcv_addr_detail = rcv_addr_detail;
	}

	public String getDelivery_msg() {
		return delivery_msg;
	}

	public void setDelivery_msg(String delivery_msg) {
		this.delivery_msg = delivery_msg;
	}

	public int getTracking_num() {
		return tracking_num;
	}

	public void setTracking_num(int tracking_num) {
		this.tracking_num = tracking_num;
	}

	public int getCredit_cd() {
		return credit_cd;
	}

	public void setCredit_cd(int credit_cd) {
		this.credit_cd = credit_cd;
	}

	public int getDelivery_com_cd() {
		return delivery_com_cd;
	}

	public void setDelivery_com_cd(int delivery_com_cd) {
		this.delivery_com_cd = delivery_com_cd;
	}

	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	
	
}
