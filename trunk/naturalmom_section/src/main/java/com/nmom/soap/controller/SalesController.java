package com.nmom.soap.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.nmom.soap.S;
import com.nmom.soap.data.dao.sales.IVRank_SellsDao;
import com.nmom.soap.data.model.sales.VRank_SellsVo;
import com.nmom.soap.data.model.sales.stat.AgeGroupStat;
import com.nmom.soap.data.model.sales.stat.AgeGroupVo;
import com.nmom.soap.data.model.sales.stat.GenderGroupStat;
import com.nmom.soap.data.model.sales.stat.GenderGroupVo;
import com.nmom.soap.data.model.sales.stat.VRank_SellsStat;
import com.nmom.soap.svc.sales.ISaleStatementSvc;
import com.nmom.soap.svc.sales.IVRank_SellsSvc;

@Controller
public class SalesController 
{
	private IVRank_SellsSvc rank_sellsSvc;
	private ISaleStatementSvc saleStatementSvc;
	
	public void setRank_sellsSvc(IVRank_SellsSvc rank_sellsSvc) 
	{
		this.rank_sellsSvc = rank_sellsSvc;
	}

	public void setSaleStatementSvc(ISaleStatementSvc saleStatementSvc) 
	{
		this.saleStatementSvc = saleStatementSvc;
	}
	
	@RequestMapping(value="/admin/sales.nm", method=RequestMethod.GET, params="page=analysis")
	public ModelAndView sales_analysis(HttpServletRequest reqeust, HttpSession session)
	{
		// 세션에서 아이디와 관리자인지 여부를 얻어옴
	    Boolean isAdmin = ((Boolean)session.getAttribute(S.SESSION_ADMIN));
		Map<String, Object> map = new HashMap<String,Object>();
		
		if (isAdmin!= null && isAdmin.booleanValue())
		{
			// 차트 만드는 부분
			List<VRank_SellsVo> rank_list = rank_sellsSvc.getAllRank(true);
			List<AgeGroupVo> age_list = rank_sellsSvc.getStatAgeGroup();
			List<GenderGroupVo> gender_list = rank_sellsSvc.getStatGenderGroup();
			
			List<VRank_SellsStat> rStat_list = new ArrayList<VRank_SellsStat>();
			List<AgeGroupStat> aStat_list = new ArrayList<AgeGroupStat>();
			List<GenderGroupStat> gStat_list = new ArrayList<GenderGroupStat>();
			
			
			
			map.put("rank_list", rank_list);
			return new ModelAndView("admin/sales/a_sales", map);
	    }
		else
		{
			map.put("err_msg", "관리자로 로그인 바랍니다.");
			return new ModelAndView("login/login", map);
		}
	}
}
