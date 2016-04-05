package nm.data.model;

public class CategoryVO {
	private int category_cd;
	private String category_nm;
	
	public CategoryVO(){}
	public CategoryVO(int category_cd, String category_nm) {
		super();
		this.category_cd = category_cd;
		this.category_nm = category_nm;
	}
	
	public int getCategory_cd() {
		return category_cd;
	}
	public void setCategory_cd(int category_cd) {
		this.category_cd = category_cd;
	}
	public String getCategory_nm() {
		return category_nm;
	}
	public void setCategory_nm(String category_nm) {
		this.category_nm = category_nm;
	}

	@Override
	public String toString() {
		return "CategoryVO [category_cd=" + category_cd + ", category_nm=" + category_nm + "]";
	}
}