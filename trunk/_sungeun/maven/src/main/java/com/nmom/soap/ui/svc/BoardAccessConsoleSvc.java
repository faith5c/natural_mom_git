package com.nmom.soap.ui.svc;

import com.nmom.soap.data.dao.IBoardAccessDao;
import com.nmom.soap.data.model.BoardAccessVo;

public class BoardAccessConsoleSvc implements IBoardAccessSvc {
	
	IBoardAccessDao boardAccessDao;
	
	public void setBoardAccessDao(IBoardAccessDao boardAccessDao) {
		this.boardAccessDao = boardAccessDao;
	}

	
	
	
	@Override
	public BoardAccessVo getAdminAccess(int board_no) {
		BoardAccessVo a = boardAccessDao.getAdminAccess(board_no);
		System.out.println("#board, R, W, M, D, level");
		System.out.println("#"+a.getBoard_cd()+", "+a.getBoard_read()+", "+a.getBoard_write()+", "
							+a.getBoard_modify()+", "+a.getBoard_delete()+", "+a.getMem_level_cd());
		return null;
	}

	@Override
	public BoardAccessVo getMemberAccess(int board_no) {
		BoardAccessVo a = boardAccessDao.getMemberAccess(board_no);
		System.out.println("#board, R, W, M, D, level");
		System.out.println("#"+a.getBoard_cd()+", "+a.getBoard_read()+", "+a.getBoard_write()+", "
							+a.getBoard_modify()+", "+a.getBoard_delete()+", "+a.getMem_level_cd());
		return null;
	}

	@Override
	public BoardAccessVo getBlacklistAccess(int board_no) {
		BoardAccessVo a = boardAccessDao.getBlacklistAccess(board_no);
		System.out.println("#board, R, W, M, D, level");
		System.out.println("#"+a.getBoard_cd()+", "+a.getBoard_read()+", "+a.getBoard_write()+", "
							+a.getBoard_modify()+", "+a.getBoard_delete()+", "+a.getMem_level_cd());
		return null;
	}

	@Override
	public BoardAccessVo getNonmemberAccess(int board_no) {
		BoardAccessVo a = boardAccessDao.getNonmemberAccess(board_no);
		System.out.println("#board, R, W, M, D, level");
		System.out.println("#"+a.getBoard_cd()+", "+a.getBoard_read()+", "+a.getBoard_write()+", "
							+a.getBoard_modify()+", "+a.getBoard_delete()+", "+a.getMem_level_cd());
		return null;
	}

	@Override
	public BoardAccessVo getAccessNotice(int mem_level_cd) {
		BoardAccessVo a = boardAccessDao.getAccessNotice(mem_level_cd);
		System.out.println("#board, R, W, M, D, level");
		System.out.println("#"+a.getBoard_cd()+", "+a.getBoard_read()+", "+a.getBoard_write()+", "
							+a.getBoard_modify()+", "+a.getBoard_delete()+", "+a.getMem_level_cd());
		return null;
	}

	@Override
	public BoardAccessVo getAccessEvent(int mem_level_cd) {
		BoardAccessVo a = boardAccessDao.getAccessEvent(mem_level_cd);
		System.out.println("#board, R, W, M, D, level");
		System.out.println("#"+a.getBoard_cd()+", "+a.getBoard_read()+", "+a.getBoard_write()+", "
							+a.getBoard_modify()+", "+a.getBoard_delete()+", "+a.getMem_level_cd());
		return null;
	}

	@Override
	public BoardAccessVo getAccessQnA(int mem_level_cd) {
		BoardAccessVo a = boardAccessDao.getAccessQnA(mem_level_cd);
		System.out.println("#board, R, W, M, D, level");
		System.out.println("#"+a.getBoard_cd()+", "+a.getBoard_read()+", "+a.getBoard_write()+", "
							+a.getBoard_modify()+", "+a.getBoard_delete()+", "+a.getMem_level_cd());
		return null;
	}

	@Override
	public BoardAccessVo getAccessFaQ(int mem_level_cd) {
		BoardAccessVo a = boardAccessDao.getAccessFaQ(mem_level_cd);
		System.out.println("#board, R, W, M, D, level");
		System.out.println("#"+a.getBoard_cd()+", "+a.getBoard_read()+", "+a.getBoard_write()+", "
							+a.getBoard_modify()+", "+a.getBoard_delete()+", "+a.getMem_level_cd());
		return null;
	}

	@Override
	public BoardAccessVo getAccessReview(int mem_level_cd) {
		BoardAccessVo a = boardAccessDao.getAccessReview(mem_level_cd);
		System.out.println("#board, R, W, M, D, level");
		System.out.println("#"+a.getBoard_cd()+", "+a.getBoard_read()+", "+a.getBoard_write()+", "
							+a.getBoard_modify()+", "+a.getBoard_delete()+", "+a.getMem_level_cd());
		return null;
	}

	
	
	@Override
	public BoardAccessVo getAccess(int board_no, String mem_id) {
		BoardAccessVo a = boardAccessDao.getAccess(board_no, mem_id);
		System.out.println("#board, R, W, M, D, level");
		System.out.println("#"+a.getBoard_cd()+", "+a.getBoard_read()+", "+a.getBoard_write()+", "
							+a.getBoard_modify()+", "+a.getBoard_delete()+", "+a.getMem_level_cd());
		return null;
	}
	
}
