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
import com.nmom.soap.data.model.board.qna.VQnaQnaReVo;
import com.nmom.soap.svc.board.qna.IQnaReSvc;
import com.nmom.soap.svc.board.qna.IQnaSvc;
import com.nmom.soap.svc.board.qna.IVQnaQnareSvc;

@Controller
public class QnaController {
	IQnaSvc qnaSvc;
	IQnaReSvc qnaReSvc;
	IVQnaQnareSvc vQnaQnareSvc;
	
	public void setQnaSvc(IQnaSvc qnaSvc) {
		this.qnaSvc = qnaSvc;
	}
	public void setQnaReSvc(IQnaReSvc qnaReSvc) {
		this.qnaReSvc = qnaReSvc;
	}
	public void setVQnaQnareSvc(IVQnaQnareSvc vQnaQnareSvc) {
		this.vQnaQnareSvc = vQnaQnareSvc;
	}
	
	/*
	@RequestMapping(value ="/board/qna.nm", method=RequestMethod.GET)
	public String board_qna(HttpServletRequest req){
		return "board/qna/b_qna";
	}*/
	
	@RequestMapping(value ="admin/board/qna.nm", method=RequestMethod.GET)
	public String a_board_qna(HttpServletRequest req){
		return "admin/board/qna/a_qna";
	}
	
	@RequestMapping(value="/board/qna.nm", method=RequestMethod.GET)
	public ModelAndView board_qna(HttpServletRequest req, 
			@RequestParam(value="pgidx", required=false) String pageindex){
		int pi;

		if(pageindex == null){
			pageindex = "1";
		}
		
		try{
			pi = Integer.parseInt(pageindex)-1; //실제 인덱스는 0부터 시작
	
		} catch(Exception e){
			e.printStackTrace();
			pi = 0;
		}
		
		Map<String,Object> map = new HashMap<String,Object>();
		
		List<VQnaQnaReVo> qna_list = vQnaQnareSvc.getAllQna(pi * S.PAGE_LIMIT, (pi+1) * S.PAGE_LIMIT);
		
		if(qna_list != null){
			map.put("qna_list", qna_list);
		}
		ModelAndView mav = new ModelAndView("board/qna/b_qna", map);
		return mav;
	}
}