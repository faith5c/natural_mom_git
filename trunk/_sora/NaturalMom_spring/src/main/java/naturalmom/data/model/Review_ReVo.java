package naturalmom.data.model;

import java.util.Date;

public class Review_ReVo 
{
	// 멤버 변수
	int review_re_no;
	String rvw_re_content;
	Date rvw_re_write_day;
	int rvw_re_del_check;
	int rvw_no;
	String mem_id;
	
	// 생성자
	public Review_ReVo(){}
	
	// 모두 입력: 리플 등록 시
	public Review_ReVo(int review_re_no, String rvw_re_content,
			Date rvw_re_write_day, int rvw_re_del_check, int rvw_no,
			String mem_id) 
	{
		this.review_re_no = review_re_no;
		this.rvw_re_content = rvw_re_content;
		this.rvw_re_write_day = rvw_re_write_day;
		this.rvw_re_del_check = rvw_re_del_check;
		this.rvw_no = rvw_no;
		this.mem_id = mem_id;
	}
	
	// 삭제 상태 빠짐 (기본 false): 리플 내용 가져올 시
//	public Review_ReVo(int review_re_no, String rvw_re_content,
//			Date rvw_re_write_day, int rvw_no,
//			String mem_id) 
//	{
//		this.review_re_no = review_re_no;
//		this.rvw_re_content = rvw_re_content;
//		this.rvw_re_write_day = rvw_re_write_day;
//		this.rvw_re_del_check = 0;
//		this.rvw_no = rvw_no;
//		this.mem_id = mem_id;
//	}
	
	// getter and setter
	public int getReview_re_no() {
		return review_re_no;
	}

	public void setReview_re_no(int review_re_no) {
		this.review_re_no = review_re_no;
	}
	public String getRvw_re_content() {
		return rvw_re_content;
	}
	public void setRvw_re_content(String rvw_re_content) {
		this.rvw_re_content = rvw_re_content;
	}
	public Date getRvw_re_write_day() {
		return rvw_re_write_day;
	}
	public void setRvw_re_write_day(Date rvw_re_write_day) {
		this.rvw_re_write_day = rvw_re_write_day;
	}
	public int getRvw_re_del_check() {
		return rvw_re_del_check;
	}
	public void setRvw_re_del_check(int rvw_re_del_check) {
		this.rvw_re_del_check = rvw_re_del_check;
	}
	public int getRvw_no() {
		return rvw_no;
	}
	public void setRvw_no(int rvw_no) {
		this.rvw_no = rvw_no;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

	@Override
	public String toString() {
		return "Review_ReVo [review_re_no=" + review_re_no + ", rvw_re_content=" + rvw_re_content
				+ ", rvw_re_write_day=" + rvw_re_write_day + ", rvw_re_del_check=" + rvw_re_del_check + ", rvw_no="
				+ rvw_no + ", mem_id=" + mem_id + "]";
	}
}
