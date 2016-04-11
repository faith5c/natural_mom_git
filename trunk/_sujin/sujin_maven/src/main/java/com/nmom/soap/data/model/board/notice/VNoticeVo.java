package com.nmom.soap.data.model.board.notice;

import java.util.Calendar;
import java.util.Date;

public class VNoticeVo {
	private int no_rownum;
	private int notice_no;
	private String ntc_title;
	private int ntc_re_no;
	private Date ntc_write_day;
	private int ntc_hits;
	private String mem_id;
	
	public VNoticeVo(){}

	//�Խñ� �ҷ��ö� ����
	public VNoticeVo(int notice_no, String ntc_title, int ntc_re_no, Date ntc_write_day, int ntc_hits,
			String mem_id) {
		super();
		this.notice_no = notice_no;
		this.ntc_title = ntc_title;
		this.ntc_re_no = ntc_re_no;
		this.ntc_write_day = ntc_write_day;
		this.ntc_hits = ntc_hits;
		this.mem_id = mem_id;
	}
	
	 //전체 생성자
	public VNoticeVo(int no_rownum, int notice_no, String ntc_title, int ntc_re_no, Date ntc_write_day, int ntc_hits,
			String mem_id) {
		super();
		this.no_rownum = no_rownum;
		this.notice_no = notice_no;
		this.ntc_title = ntc_title;
		this.ntc_re_no = ntc_re_no;
		this.ntc_write_day = ntc_write_day;
		this.ntc_hits = ntc_hits;
		this.mem_id = mem_id;
	}
	

	public int getNo_rownum() {
		return no_rownum;
	}

	public void setNo_rownum(int no_rownum) {
		this.no_rownum = no_rownum;
	}

	@Override
	public String toString() {
		return "VNoticeVo [notice_no=" + notice_no + ", ntc_title=" + ntc_title + ", ntc_re_no=" + ntc_re_no
				+ ", ntc_write_day=" + ntc_write_day + ", ntc_hits=" + ntc_hits + ", mem_id=" + mem_id + "]";
	}

	public int getNotice_no() {
		return notice_no;
	}

	public void setNotice_no(int notice_no) {
		this.notice_no = notice_no;
	}

	public String getNtc_title() {
		return ntc_title;
	}

	public void setNtc_title(String ntc_title) {
		this.ntc_title = ntc_title;
	}

	public int getNtc_re_no() {
		return ntc_re_no;
	}

	public void setNtc_re_no(int ntc_re_no) {
		this.ntc_re_no = ntc_re_no;
	}

	public Date getNtc_write_day() {
		return ntc_write_day;
	}

	public void setNtc_write_day(Date ntc_write_day) {
		this.ntc_write_day = ntc_write_day;
	}

	public int getNtc_hits() {
		return ntc_hits;
	}

	public void setNtc_hits(int ntc_hits) {
		this.ntc_hits = ntc_hits;
	}

	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

	
}
