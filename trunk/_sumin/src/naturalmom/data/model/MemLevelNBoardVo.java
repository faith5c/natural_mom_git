package naturalmom.data.model;

public class MemLevelNBoardVo {
	private int mem_level_cd;
	private int board_cd;
	private int board_read;
	private int board_write;
	private int board_modify;
	private int board_delete;
	
	public MemLevelNBoardVo(){}
	public MemLevelNBoardVo(int mem_level_cd, int board_cd, int board_read, int board_write, int board_modify,
			int board_delete) {
		this.mem_level_cd = mem_level_cd;
		this.board_cd = board_cd;
		this.board_read = board_read;
		this.board_write = board_write;
		this.board_modify = board_modify;
		this.board_delete = board_delete;
	}
	public int getMem_level_cd() {
		return mem_level_cd;
	}
	public void setMem_level_cd(int mem_level_cd) {
		this.mem_level_cd = mem_level_cd;
	}
	public int getBoard_cd() {
		return board_cd;
	}
	public void setBoard_cd(int board_cd) {
		this.board_cd = board_cd;
	}
	public int getBoard_read() {
		return board_read;
	}
	public void setBoard_read(int board_read) {
		this.board_read = board_read;
	}
	public int getBoard_write() {
		return board_write;
	}
	public void setBoard_write(int board_write) {
		this.board_write = board_write;
	}
	public int getBoard_modify() {
		return board_modify;
	}
	public void setBoard_modify(int board_modify) {
		this.board_modify = board_modify;
	}
	public int getBoard_delete() {
		return board_delete;
	}
	public void setBoard_delete(int board_delete) {
		this.board_delete = board_delete;
	}
	@Override
	public String toString() {
		return "MemLevelNBoard [mem_level_cd=" + mem_level_cd + ", board_cd=" + board_cd + ", board_read=" + board_read
				+ ", board_write=" + board_write + ", board_modify=" + board_modify + ", board_delete=" + board_delete
				+ "]";
	}
}