package naturalmom.model;

import java.util.Date;

public class Review 
{
	// ��� ����
	int review_no;
	String rvw_title;
	Date rvw_write_day;
	int rvw_hits;
	String rvw_content;
	int rvw_del_check;
	int satisfaction;
	int product_no;
	int board_id;
	int mem_id;
	
	// ������
	public Review() {}
	
	// ��� �Է�
	public Review(int review_no, String rvw_title, Date rvw_write_day,
			int rvw_hits, String rvw_content, int rvw_del_check,
			int satisfaction, int product_no, int board_id, int mem_id) {
		super();
		this.review_no = review_no;
		this.rvw_title = rvw_title;
		this.rvw_write_day = rvw_write_day;
		this.rvw_hits = rvw_hits;
		this.rvw_content = rvw_content;
		this.rvw_del_check = rvw_del_check;
		this.satisfaction = satisfaction;
		this.product_no = product_no;
		this.board_id = board_id;
		this.mem_id = mem_id;
	}
	
	// ���� ����, �Խ��� ���̵� ���� (�⺻ false, 5)
	public Review(int review_no, String rvw_title, Date rvw_write_day,
			int rvw_hits, String rvw_content, int satisfaction, 
			int product_no, int mem_id) 
	{
		this.review_no = review_no;
		this.rvw_title = rvw_title;
		this.rvw_write_day = rvw_write_day;
		this.rvw_hits = rvw_hits;
		this.rvw_content = rvw_content;
		this.rvw_del_check = 0;
		this.satisfaction = satisfaction;
		this.product_no = product_no;
		this.board_id = 5;
		this.mem_id = mem_id;
	}
		
	// getter and setter
	public int getReview_no() {
		return review_no;
	}
	public void setReview_no(int review_no) {
		this.review_no = review_no;
	}
	public String getRvw_title() {
		return rvw_title;
	}
	public void setRvw_title(String rvw_title) {
		this.rvw_title = rvw_title;
	}
	public Date getRvw_write_day() {
		return rvw_write_day;
	}
	public void setRvw_write_day(Date rvw_write_day) {
		this.rvw_write_day = rvw_write_day;
	}
	public int getRvw_hits() {
		return rvw_hits;
	}
	public void setRvw_hits(int rvw_hits) {
		this.rvw_hits = rvw_hits;
	}
	public String getRvw_content() {
		return rvw_content;
	}
	public void setRvw_content(String rvw_content) {
		this.rvw_content = rvw_content;
	}
	public int getRvw_del_check() {
		return rvw_del_check;
	}
	public void setRvw_del_check(int rvw_del_check) {
		this.rvw_del_check = rvw_del_check;
	}
	public int getSatisfaction() {
		return satisfaction;
	}
	public void setSatisfaction(int satisfaction) {
		this.satisfaction = satisfaction;
	}
	public int getProduct_no() {
		return product_no;
	}
	public void setProduct_no(int product_no) {
		this.product_no = product_no;
	}
	public int getBoard_id() {
		return board_id;
	}
	public void setBoard_id(int board_id) {
		this.board_id = board_id;
	}
	public int getMem_id() {
		return mem_id;
	}
	public void setMem_id(int mem_id) {
		this.mem_id = mem_id;
	}
}