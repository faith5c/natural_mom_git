package com.nmom.soap.svc.sales;

import java.util.List;

import com.nmom.soap.data.model.sales.VRank_SellsVo;

public interface IVRank_SellsSvc 
{
	// order: false = 내림차순, true = 오름차순
	// 순위로 정렬하기
	List<VRank_SellsVo> getAllRank(boolean order);
}
