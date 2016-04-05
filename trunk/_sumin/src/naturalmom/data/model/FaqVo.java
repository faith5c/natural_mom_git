package naturalmom.data.model;

public class FaqVo {
	private int faq_no;
	private String faq_title;
	private String faq_content;
	private int faq_del_check;
	private int board_id;
	private String mem_id;
	
	public FaqVo(){}
	public FaqVo(int faq_no, String faq_title, String faq_content, int faq_del_check, int board_id, String mem_id) {
		super();
		this.faq_no = faq_no;
		this.faq_title = faq_title;
		this.faq_content = faq_content;
		this.faq_del_check = faq_del_check;
		this.board_id = board_id;
		this.mem_id = mem_id;
	}
	public int getFaq_no() {
		return faq_no;
	}
	public void setFaq_no(int faq_no) {
		this.faq_no = faq_no;
	}
	public String getFaq_title() {
		return faq_title;
	}
	public void setFaq_title(String faq_title) {
		this.faq_title = faq_title;
	}
	public String getFaq_content() {
		return faq_content;
	}
	public void setFaq_content(String faq_content) {
		this.faq_content = faq_content;
	}
	public int getFaq_del_check() {
		return faq_del_check;
	}
	public void setFaq_del_check(int faq_del_check) {
		this.faq_del_check = faq_del_check;
	}
	public int getBoard_id() {
		return board_id;
	}
	public void setBoard_id(int board_id) {
		this.board_id = board_id;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	
	@Override
	public String toString() {
		return "FaqVo [faq_no=" + faq_no + ", faq_title=" + faq_title + ", faq_content=" + faq_content
				+ ", faq_del_check=" + faq_del_check + ", board_id=" + board_id + ", mem_id=" + mem_id + "]";
	}
}