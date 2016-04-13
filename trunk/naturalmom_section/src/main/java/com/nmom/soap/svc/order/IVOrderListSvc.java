package com.nmom.soap.svc.order;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.nmom.soap.data.model.order.VOrderListVo;


public interface IVOrderListSvc {
	
	// 1.  주문자 주문조회
	public List<VOrderListVo> getAllOreder(int page, String mem_id) throws DataAccessException;
	
	// 2. 주문갯수 가져오기
	public int getAllCount(String mem_id) throws DataAccessException;
}
