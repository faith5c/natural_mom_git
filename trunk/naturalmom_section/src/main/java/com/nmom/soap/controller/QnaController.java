package com.nmom.soap.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
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
import com.nmom.soap.data.model.board.qna.QnaReVo;
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
	
	
	@RequestMapping(value ="admin/board/qna.nm", method=RequestMethod.GET)
	public String a_board_qna(HttpServletRequest req){
		return "admin/board/qna/a_qna";
	}
	
	//QNA 목록보기
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
	

	//QNA 질문 검색
	@RequestMapping(value ="/board/qna/search.nm", method=RequestMethod.GET)
	public ModelAndView board_search_qna(HttpServletRequest req, 
			@RequestParam(value="pgidx", required=false) String pageindex,
			@RequestParam(value="sch") String sch,
			@RequestParam(value="kw", required=false) String kw){
		int pi;
		
		if(pageindex == null){
			pageindex = "1";
		}
		
		if(kw==null){
			kw="";
		}
		
		try {
			kw = URLDecoder.decode(kw, "UTF-8");
			System.out.println(kw);
		} catch (UnsupportedEncodingException e1) {
			e1.printStackTrace();
		}
		
		try{
			pi = Integer.parseInt(pageindex)-1; //실제 인덱스는 0부터 시작
			
		} catch(Exception e){
			e.printStackTrace();
			pi = 0;
		}
		
		Map<String,Object> map = new HashMap<String,Object>();
		List<VQnaQnaReVo> qna_list;
		
		if(sch.equals("tt")){
			qna_list = vQnaQnareSvc.searchQnaTitle(kw, pi * S.PAGE_LIMIT, (pi+1) * S.PAGE_LIMIT);

			for (VQnaQnaReVo ff : qna_list) {
				System.out.println(ff);
			}
			System.out.println("tt");
			
		}else if(sch.equals("con")){
			qna_list = vQnaQnareSvc.searchQnaContent(kw, pi * S.PAGE_LIMIT, (pi+1) * S.PAGE_LIMIT);
			System.out.println("cn");
			for (VQnaQnaReVo ff : qna_list) {
				System.out.println(ff);
			}
		}else if(sch.equals("ttcon")){
			qna_list = vQnaQnareSvc.searchQnaTitleNContent(kw, pi * S.PAGE_LIMIT, (pi+1) * S.PAGE_LIMIT);
			System.out.println("ttcon");
			for (VQnaQnaReVo ff : qna_list) {
				System.out.println(ff);
			}
		}else {
			qna_list = vQnaQnareSvc.getAllQna(pi * S.PAGE_LIMIT, (pi+1) * S.PAGE_LIMIT);
			System.out.println("total");
		}
		
		if(qna_list != null){
			map.put("qna_list", qna_list);
		}
		
		ModelAndView mav = new ModelAndView("board/qna/b_qna", map);
		return mav;
	}
	

	//QNA 하나 읽기
	@RequestMapping(value="/board/qna/read.nm", method=RequestMethod.GET)
	public ModelAndView qna_read(HttpServletRequest req,
		@RequestParam(value="qr_no") String qr_no)
	{
		Map<String,Object> map = new HashMap<String,Object>();
		VQnaQnaReVo qna_vo;
		List<QnaReVo> qnare_list;
		
		int qnano;
		
		try{
			if(qr_no != null){
				qnano = Integer.parseInt(qr_no);
				qna_vo = vQnaQnareSvc.getOneQna(qnano);
				qnare_list = qnaReSvc.getQnaReByQnaNo(qnano);
				if(qna_vo!=null){
					map.put("qvo", qna_vo);
					if(qnare_list!=null){
						map.put("qnare_list", qnare_list);
					}
				}
				
				if(qna_vo.getQna_pw()== null){ //일반글일때
					
					return new ModelAndView("/board/qna/b_qna", map);
					
				}else { //비밀글일때
					map.put("secret", "비밀글");
					return new ModelAndView("/board/qna/b_qna", map);
				}
			}
		} catch(Exception e){
			e.printStackTrace();
		}
		return new ModelAndView("redirect:/board/qna.nm", map);
	}
	
	//QNA 비밀글 하나 읽기
	@RequestMapping(value="/board/qna/secret.nm", method=RequestMethod.POST)
	public ModelAndView qna_secret_read(HttpServletRequest req,
		@RequestParam(value="rn", required=false) String rn,
		@RequestParam(value="qr_no") String qr_no,
		@RequestParam(value="q_pw") String q_pw
	)
	{
		Map<String,Object> map = new HashMap<String,Object>();
		VQnaQnaReVo qna_vo;
		List<QnaReVo> qnare_list;
		
		int qnano;
		
		try{
			if(qr_no != null){
				qnano = Integer.parseInt(qr_no);
				qna_vo = vQnaQnareSvc.getOneQna(qnano);
				qnare_list = qnaReSvc.getQnaReByQnaNo(qnano);
				if(qna_vo!=null){
					map.put("qvo", qna_vo);
					if(qnare_list!=null){
						map.put("qnare_list", qnare_list);
					}
				}

				if(qna_vo.getQna_pw().equals(q_pw)){ //글 비밀번호가 맞음
					return new ModelAndView("/board/qna/b_qna", map);
					
				} else{ //글 비밀번호가 틀림
					map.put("secret", "비밀글");
					map.put("incorrect_pw", "잘못된 비밀번호 입니다");
					return new ModelAndView("/board/qna/b_qna", map);
				}
			}
		} catch(Exception e){
			e.printStackTrace();
		}
		return new ModelAndView("redirect:/board/qna.nm", map);
	}
	
	// QNA 글쓰기
	//@RequestMapping(value="/board/qna/write_form.nm", method=RequstMethod.POST)
	
}