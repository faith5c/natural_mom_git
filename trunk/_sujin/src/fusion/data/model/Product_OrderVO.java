package fusion.data.model;

public class Product_OrderVO {
	private int product_no;
	private int order_no;
	private int buy_num;
	private int process_cd;
	
	public Product_OrderVO(){}

	public int getProduct_no() {
		return product_no;
	}

	public Product_OrderVO(int product_no, int order_no, int buy_num, int process_cd) {
		super();
		this.product_no = product_no;
		this.order_no = order_no;
		this.buy_num = buy_num;
		this.process_cd = process_cd;
	}

	public void setProduct_no(int product_no) {
		this.product_no = product_no;
	}

	public int getOrder_no() {
		return order_no;
	}

	public void setOrder_no(int order_no) {
		this.order_no = order_no;
	}

	public int getBuy_num() {
		return buy_num;
	}

	public void setBuy_num(int buy_num) {
		this.buy_num = buy_num;
	}

	public int getProcess_cd() {
		return process_cd;
	}

	public void setProcess_cd(int process_cd) {
		this.process_cd = process_cd;
	}
	
	

}
