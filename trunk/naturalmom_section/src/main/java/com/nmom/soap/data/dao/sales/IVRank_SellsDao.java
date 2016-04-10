package com.nmom.soap.data.dao.sales;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.nmom.soap.data.model.sales.VRank_SellsVo;

public interface IVRank_SellsDao 
{
	// order: false = 내림차순, true = 오름차순
	// 순위로 정렬하기
	List<VRank_SellsVo> getAllRank(boolean order) throws DataAccessException;
}
