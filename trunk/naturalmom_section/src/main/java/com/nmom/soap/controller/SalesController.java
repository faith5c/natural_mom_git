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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.nmom.soap.S;
import com.nmom.soap.data.dao.sales.IVRank_SellsDao;
import com.nmom.soap.data.model.sales.SaleStatementVo;
import com.nmom.soap.data.model.sales.VRank_SellsVo;
import com.nmom.soap.data.model.sales.stat.AgeGroupStat;
import com.nmom.soap.data.model.sales.stat.AgeGroupStatList;
import com.nmom.soap.data.model.sales.stat.AgeGroupVo;
import com.nmom.soap.data.model.sales.stat.GenderGroupStat;
import com.nmom.soap.data.model.sales.stat.GenderGroupStatList;
import com.nmom.soap.data.model.sales.stat.GenderGroupVo;
import com.nmom.soap.data.model.sales.stat.VRank_SellsStat;
import com.nmom.soap.data.model.sales.stat.VRank_SellsStatList;
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
	
	// 총 누적 판매량 차트
	@RequestMapping(value="/admin/sales_charts.nm", method=RequestMethod.GET)
	@ResponseBody
	public VRank_SellsStatList reportSellsStat()
	{
		List<VRank_SellsVo> rank_list = rank_sellsSvc.getAllRank(true);
		List<VRank_SellsStat> rStat_list = new ArrayList<VRank_SellsStat>();
		
		for (VRank_SellsVo rs : rank_list)
		{
			VRank_SellsStat rss = new VRank_SellsStat(rs.getProduct_name(), rs.getAll_sells());
			rStat_list.add(rss);
		}
		
		return new VRank_SellsStatList(rStat_list, "총 누적판매량");
	}
	
	// 연령별 회원 수 차트
	@RequestMapping(value="/admin/age_charts.nm", method=RequestMethod.GET)
	@ResponseBody
	public AgeGroupStatList reportAgeGroupStat()
	{
		List<AgeGroupVo> age_list = rank_sellsSvc.getStatAgeGroup();
		List<AgeGroupStat> aStat_list = new ArrayList<AgeGroupStat>();
		
		for (AgeGroupVo age : age_list)
		{
			AgeGroupStat ags = new AgeGroupStat(age.getRatio(), age.getAmount(), age.getAge_group()+"대", null);
			aStat_list.add(ags);
		}
		
		return new AgeGroupStatList(aStat_list, "연령별 분포도");
	}
	
	// 성별 회원 수 차트
	@RequestMapping(value="/admin/gender_charts.nm", method=RequestMethod.GET)
	@ResponseBody
	public GenderGroupStatList reportGenderGroupStat()
	{
		List<GenderGroupVo> gender_list = rank_sellsSvc.getStatGenderGroup();
		List<GenderGroupStat> gStat_list = new ArrayList<GenderGroupStat>();
		
		for (GenderGroupVo gen : gender_list)
		{
			GenderGroupStat ggs = new GenderGroupStat(gen.getRatio(), gen.getAmount(), 
					(gen.getMem_gender() == 1 ? "남" : "여"), null);
			gStat_list.add(ggs);
		}
		
		return new GenderGroupStatList(gStat_list, "성별당 회원 분포도");
	}
	
	
	@RequestMapping(value="/admin/sales.nm", method=RequestMethod.GET, params="page=analysis")
	public ModelAndView sales_analysis(HttpServletRequest reqeust, HttpSession session)
	{
		// 세션에서 아이디와 관리자인지 여부를 얻어옴
	    Boolean isAdmin = ((Boolean)session.getAttribute(S.SESSION_ADMIN));
		Map<String, Object> map = new HashMap<String,Object>();
		
		if (isAdmin!= null && isAdmin.booleanValue())
		{
			List<VRank_SellsVo> rank_list = rank_sellsSvc.getAllRank(true);
			map.put("rank_list", rank_list);
			return new ModelAndView("admin/sales/a_sales", map);
		}
		else
		{
			map.put("err_msg", "관리자로 로그인 바랍니다.");
			return new ModelAndView("login/login", map);
		}
	}
	
	@RequestMapping(value="/admin/sales.nm", method=RequestMethod.GET)
	public ModelAndView sales_table(HttpServletRequest reqeust, HttpSession session)
	{
		// 세션에서 아이디와 관리자인지 여부를 얻어옴
	    Boolean isAdmin = ((Boolean)session.getAttribute(S.SESSION_ADMIN));
		Map<String, Object> map = new HashMap<String,Object>();
		
		if (isAdmin!= null && isAdmin.booleanValue())
		{
			return new ModelAndView("admin/sales/a_sales", map);
		}
		else
		{
			map.put("err_msg", "관리자로 로그인 바랍니다.");
			return new ModelAndView("login/login", map);
		}
	}
}
