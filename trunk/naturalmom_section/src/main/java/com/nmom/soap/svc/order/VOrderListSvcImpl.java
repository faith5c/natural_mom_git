package com.nmom.soap.svc.order;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.nmom.soap.S;
import com.nmom.soap.data.dao.order.IVOrderListDao;
import com.nmom.soap.data.model.board.notice.VNoticeVo;
import com.nmom.soap.data.model.order.VOrderListVo;

public class VOrderListSvcImpl implements IVOrderListSvc {

	private IVOrderListDao vOrderListDao;
	
	@Override
	public List<VOrderListVo> getAllOreder(int block, int allPages, String mem_id) {
		int start = 1; // 
		//모든 페이지는 1부터 시작
		for(int i = 1; i > block; i++){
			start+=S.PAGE_LIMIT;
		}
						//스타트에서 1 더했으므로 여기서 뺌
		int end = start + (S.PAGE_LIMIT-1);
		List<VOrderListVo> list = this.vOrderListDao.getAllOreder(start, end, mem_id);
		return (list != null && list.size() > 0) ? list : null; 
	}

	@Override
	public int getAllCount(String mem_id) {
		return this.vOrderListDao.getAllCount(mem_id);
	}

	public void setVOrderListDao(IVOrderListDao vOrderListDao) {
		this.vOrderListDao = vOrderListDao;
	}

}
