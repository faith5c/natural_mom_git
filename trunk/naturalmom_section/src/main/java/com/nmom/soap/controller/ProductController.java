package com.nmom.soap.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.nmom.soap.S;
import com.nmom.soap.data.model.category.CategoryVo;
import com.nmom.soap.data.model.product.ProductVo;
import com.nmom.soap.data.model.product.VProduct_DeletedVo;
import com.nmom.soap.data.model.product.VProduct_ManageVo;
import com.nmom.soap.svc.category.ICategorySvc;
import com.nmom.soap.svc.product.IProductSvc;
import com.nmom.soap.svc.product.IVProduct_DeletedSvc;
import com.nmom.soap.svc.product.IVProduct_ManageSvc;

@Controller
public class ProductController 
{
	IProductSvc productSvc;
	IVProduct_DeletedSvc product_deletedSvc;
	IVProduct_ManageSvc product_manageSvc;
	ICategorySvc categorySvc;
	
	public void setProductSvc(IProductSvc productSvc) 
	{
		this.productSvc = productSvc;
	}
	
	public void setProduct_deletedSvc(IVProduct_DeletedSvc product_deletedSvc) 
	{
		this.product_deletedSvc = product_deletedSvc;
	}
	
	public void setProduct_manageSvc(IVProduct_ManageSvc product_manageSvc) 
	{
		this.product_manageSvc = product_manageSvc;
	}

	public void setCategorySvc(ICategorySvc categorySvc) {
		this.categorySvc = categorySvc;
	}
	
	// 상품관리 페이지
	@RequestMapping(value ="/admin/product.nm", method=RequestMethod.GET)
	public ModelAndView product_manageList(HttpServletRequest request,
			@RequestParam(value="by", required=false) String by, @RequestParam(value="order", required=false) String order)
	{		
		List<VProduct_ManageVo> list = null;
		Map<String, Object> map = new HashMap<String, Object>();
		
		if (by == null || order == null)
			list = product_manageSvc.getAllProduct_by_product_no(S.ASC);
		else if (by.equals("no"))
		{
			if (order.equals("true"))
				list = product_manageSvc.getAllProduct_by_product_no(S.ASC);
			else
				list = product_manageSvc.getAllProduct_by_product_no(S.DESC);
		}
		else if (by.equals("ct"))
		{
			if (order.equals("true"))
				list = product_manageSvc.getAllProduct_by_category_nm(S.ASC);
			else
				list = product_manageSvc.getAllProduct_by_category_nm(S.DESC);
		}
		else if (by.equals("nm"))
		{
			if (order.equals("true"))
				list = product_manageSvc.getAllProduct_by_product_name(S.ASC);
			else
				list = product_manageSvc.getAllProduct_by_product_name(S.DESC);
		}
		else if (by.equals("pr"))
		{
			if (order.equals("true"))
				list = product_manageSvc.getAllProduct_by_selling_price(S.ASC);
			else
				list = product_manageSvc.getAllProduct_by_selling_price(S.DESC);
		}
		else if (by.equals("st"))
		{
			if (order.equals("true"))
				list = product_manageSvc.getAllProduct_by_stock(S.ASC);
			else
				list = product_manageSvc.getAllProduct_by_stock(S.DESC);
		}
		else if (by.equals("dis"))
		{
			if (order.equals("true"))
				list = product_manageSvc.getAllProduct_by_display_state(S.ASC);
			else
				list = product_manageSvc.getAllProduct_by_display_state(S.DESC);
		}
		else if (by.equals("sal"))
		{
			if (order.equals("true"))
				list = product_manageSvc.getAllProduct_by_sale_state(S.ASC);
			else
				list = product_manageSvc.getAllProduct_by_sale_state(S.DESC);
		}
		else if (by.equals("all"))
		{
			if (order.equals("true"))
				list = product_manageSvc.getAllProduct_by_all_sells(S.ASC);
			else
				list = product_manageSvc.getAllProduct_by_all_sells(S.DESC);
		}
		else
		{
			list = product_manageSvc.getAllProduct_by_product_no(S.ASC);
		}

		map.put("p_list", list);
		return new ModelAndView("admin/product/a_product", map);
	}
	
	
	// 삭제된 상품관리
	@RequestMapping(value="/admin/product.nm", method=RequestMethod.GET, params="page=deleted")
	public ModelAndView product_deletedList(HttpServletRequest request,
			@RequestParam(value="by", required=false) String by, @RequestParam(value="order", required=false) String order)
	{
		List<VProduct_DeletedVo> list = null;
		Map<String, Object> map = new HashMap<String, Object>();
		
		if (by == null || order == null)
			list = product_deletedSvc.getAllDeletedProduct_by_product_no(S.ASC);
		else if (by.equals("no"))
		{
			if (order.equals("true"))
				list = product_deletedSvc.getAllDeletedProduct_by_product_no(S.ASC);
			else
				list = product_deletedSvc.getAllDeletedProduct_by_product_no(S.DESC);
		}
		else if (by.equals("ct"))
		{
			if (order.equals("true"))
				list = product_deletedSvc.getAllDeletedProduct_by_category_nm(S.ASC);
			else
				list = product_deletedSvc.getAllDeletedProduct_by_category_nm(S.DESC);
		}
		else if (by.equals("nm"))
		{
			if (order.equals("true"))
				list = product_deletedSvc.getAllDeletedProduct_by_product_name(S.ASC);
			else
				list = product_deletedSvc.getAllDeletedProduct_by_product_name(S.DESC);
		}
		else if (by.equals("pr"))
		{
			if (order.equals("true"))
				list = product_deletedSvc.getAllDeletedProduct_by_selling_price(S.ASC);
			else
				list = product_deletedSvc.getAllDeletedProduct_by_selling_price(S.DESC);
		}
		else if (by.equals("st"))
		{
			if (order.equals("true"))
				list = product_deletedSvc.getAllDeletedProduct_by_stock(S.ASC);
			else
				list = product_deletedSvc.getAllDeletedProduct_by_stock(S.DESC);
		}
		else if (by.equals("all"))
		{
			if (order.equals("true"))
				list = product_deletedSvc.getAllDeletedProduct_by_all_sells(S.ASC);
			else
				list = product_deletedSvc.getAllDeletedProduct_by_all_sells(S.DESC);
		}
		else
		{
			list = product_deletedSvc.getAllDeletedProduct_by_product_no(S.ASC);
		}
		
		map.put("p_list", list);
		return new ModelAndView("admin/product/a_product", map);
	}
	
	// 상품관리 & 상품삭제 페이지에서 상태 변경
	@RequestMapping(value ="/admin/product.nm", method=RequestMethod.GET, params="page=process")
	public String product_changeState(HttpServletRequest request,
			@RequestParam(value="item", required=false) String item, @RequestParam(value="order", required=false) int order,
			@RequestParam(value="no", required=false) int[] no)
	{
		for (int i = 0; i < no.length; i++)
		{
			if (item.equals("dis"))
			{
				int r = productSvc.editDisplayState(no[i], order);
				if(r == S.PROCESS_ERROR)
				{
					// 에러 페이지 이동
					System.out.println("에러 발생");
					return "redirect:/admin/product.nm";
				}
			}
			else if (item.equals("sal"))
			{
				int r = productSvc.editSaleState(no[i], order);
				if(r == S.PROCESS_ERROR)
				{
					// 에러 페이지 이동
					System.out.println("에러 발생");
					return "redirect:/admin/product.nm";
				}
			}
			else if (item.equals("del"))
			{
				int r = productSvc.editDeletedState(no[i], order);
					
				if(r == S.PROCESS_ERROR)
				{
					// 에러 페이지 이동
					System.out.println("에러 발생");
					return "redirect:/admin/product.nm";
				}
			}
			else
			{
				// 에러 페이지
			}
		}
		
		if(item.equals("del")&& order == S.STATE_FALSE)
			return "redirect:/admin/product.nm?page=deleted";
		else
			return "redirect:/admin/product.nm";	
	}

	// 상품 등록 페이지
	@RequestMapping(value ="/admin/product.nm", method=RequestMethod.GET, params="page=register")
	public ModelAndView product_register (HttpServletRequest request)
	{
		List<CategoryVo> c_list = categorySvc.getAllCategory();
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("c_list", c_list);
		return new ModelAndView("admin/product/a_product", map);
	}
	
	//*********************************************************************//

	@RequestMapping(value ="/index.nm", method=RequestMethod.GET)
	public ModelAndView product_index_menu(HttpServletRequest req){
		
		String category_name = "모든상품";
		
		Map<String,Object> map = new HashMap<String,Object>();
		
		try{
			List<ProductVo> product_list = productSvc.getAllProduct();
			
			if(product_list != null && product_list.size() != 0)
				map.put("product_list", product_list);
			
		} catch(Exception e){
			e.printStackTrace();
		}
		map.put("category_name", category_name);
		
		return new ModelAndView("index", map);
	}
	
	@RequestMapping(value ="/product/list.nm", method=RequestMethod.GET)
	public ModelAndView product_category_menu(HttpServletRequest req,
			@RequestParam (value="cate", required=false) String cate){

		int category_code;
		String category_name = "분류없음";
		
		Map<String,Object> map = new HashMap<String,Object>();
		
		try{
			if(cate!=null){
				category_code = Integer.parseInt(cate);
				category_name = categorySvc.getCategoryNameByCd(category_code);
			
				List<ProductVo> product_list = productSvc.getProductByCategoryCd(category_code);
				if(product_list != null && product_list.size() != 0)
					map.put("product_list", product_list);
			}
		} catch(Exception e){
			e.printStackTrace();
		}
		map.put("category_name", category_name);
		
		return new ModelAndView("product/product_menu", map);
	}
	
	@RequestMapping(value="product/detail.nm", method=RequestMethod.GET)
	public ModelAndView product_description(HttpServletRequest req, 
			@RequestParam (value="pdno") String pdno){
		
		int product_no;

		Map<String,Object> map = new HashMap<String,Object>();
		
		try{
			if(pdno!=null){
				product_no = Integer.parseInt(pdno);
				
				ProductVo product_vo = productSvc.getOneProduct(product_no);

				if(product_vo != null)
					map.put("pvo", product_vo);
			}
		} catch(Exception e){
			e.printStackTrace();
		}
		
		return new ModelAndView("product/product_detail", map);
	}
	/*
	//"/soap/product/detail.nm?pdno=${pl.product_no}"
	@RequestMapping(value ="/product/detail.nm", method=RequestMethod.GET)
	public String product_category_menu(HttpServletRequest req){
		return "product/product_detail";
	}*/
	
	
}