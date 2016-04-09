package naturalmom.data.model;

public class VRank_SellsVo 
{
	// 멤버 변수
	int rownum;
	int all_sells;
	String product_name;
	
	// 생성자
	public VRank_SellsVo() {}
	// 모두 받음
	public VRank_SellsVo(int rownum, int all_sells, String product_name) 
	{
		this.rownum = rownum;
		this.all_sells = all_sells;
		this.product_name = product_name;
	}
	
	// getter and setter
	public int getRownum() {
		return rownum;
	}

	public void setRownum(int rownum) {
		this.rownum = rownum;
	}
	public int getAll_sells() {
		return all_sells;
	}
	public void setAll_sells(int all_sells) {
		this.all_sells = all_sells;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	
	// toString	
	@Override
	public String toString() {
		return "VRank_SellsVo [rownum=" + rownum + ", all_sells=" + all_sells + ", product_name=" + product_name + "]";
	}
}
