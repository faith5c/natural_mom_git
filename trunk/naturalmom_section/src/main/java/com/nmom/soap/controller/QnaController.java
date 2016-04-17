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
import com.nmom.soap.data.model.board.qna.QnaVo;
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
	@RequestMapping(value="/board/qna.nm", method={RequestMethod.GET})
	public ModelAndView boardQna(HttpServletRequest req, 
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
			System.out.println("QnA 인덱스 받아오기 오류 처리함");
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
	public ModelAndView boardSearchQna(HttpServletRequest req, 
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
			System.out.println("인코딩 문제 발생");
		}
		
		try{
			pi = Integer.parseInt(pageindex)-1; //실제 인덱스는 0부터 시작
			
		} catch(Exception e){
			e.printStackTrace();
			pi = 0;			
			System.out.println("QnA 인덱스 받아오기 오류 처리함");
		}
		
		Map<String,Object> map = new HashMap<String,Object>();
		List<VQnaQnaReVo> qna_list;
		
		if(sch.equals("tt")){
			qna_list = vQnaQnareSvc.searchQnaTitle(kw, pi * S.PAGE_LIMIT, (pi+1) * S.PAGE_LIMIT);
			
		}else if(sch.equals("con")){
			qna_list = vQnaQnareSvc.searchQnaContent(kw, pi * S.PAGE_LIMIT, (pi+1) * S.PAGE_LIMIT);
		
		}else if(sch.equals("ttcon")){
			qna_list = vQnaQnareSvc.searchQnaTitleNContent(kw, pi * S.PAGE_LIMIT, (pi+1) * S.PAGE_LIMIT);
		
		}else {
			qna_list = vQnaQnareSvc.getAllQna(pi * S.PAGE_LIMIT, (pi+1) * S.PAGE_LIMIT);
		}
		
		if(qna_list != null){
			map.put("qna_list", qna_list);
		}
		
		ModelAndView mav = new ModelAndView("board/qna/b_qna", map);
		return mav;
	}
	

	//QNA 하나 읽기
	@RequestMapping(value="/board/qna/read.nm", method=RequestMethod.GET)
	public ModelAndView qnaRead(HttpServletRequest req,
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
				
				if(qna_vo!=null && qnare_list!=null){
					
					//조회수 증가하는 부분
					if(qnaSvc.increaseQnaHits(qna_vo.getQna_no()) == 1){
						//조회수 증가시 다시 가져옴
						qna_vo = vQnaQnareSvc.getOneQna(qnano);
						qnare_list = qnaReSvc.getQnaReByQnaNo(qnano);
					} else {
						System.out.println("조회수 증가 실패");
					}
					map.put("qvo", qna_vo);
					map.put("qnare_list", qnare_list);

					//일반글인지 비밀글인지 분류
					if(qna_vo.getQna_pw()!= null){ //비밀글일때
						map.put("secret", true);
					}
					return new ModelAndView("/board/qna/b_qna", map);
				}
			}
		} catch(Exception e){
			e.printStackTrace();
			System.out.println("글읽기 정보 받아오기 실패");
		}
		return new ModelAndView("redirect:/board/qna.nm", map);
	}
	
	//QNA 비밀글 하나 읽기
	@RequestMapping(value="/board/qna/secret.nm", method=RequestMethod.POST)
	public ModelAndView qnaSecretRead(HttpServletRequest req,
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
					map.put("secret", true);
					map.put("incorrect_pw", "잘못된 비밀번호 입니다");
					return new ModelAndView("/board/qna/b_qna", map);
				}
			}
		} catch(Exception e){
			e.printStackTrace();
			System.out.println("비밀글 읽기 정보 받아오기 실패");
		}
		return new ModelAndView("redirect:/board/qna.nm", map);
	}
	
	// QNA 글쓰기 사용자가 작성하는 화면
	@RequestMapping(value="/board/qna/add_form.nm", method=RequestMethod.GET)
	public ModelAndView prepareAddQnaForm(HttpServletRequest req){
		
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("qwa", true);
		return new ModelAndView("board/qna/b_qna", map);
	}

	// QNA 글쓰기 사용자가 작성하는 과정
	@RequestMapping(value="/board/qna/add_proc.nm", method=RequestMethod.POST)
	public String addNewQna(HttpServletRequest req,
			@RequestParam(value="title", required=false) String title,
			@RequestParam(value="writer", required=false) String writer,
			@RequestParam(value="password", required=false) String password,
			@RequestParam(value="secret_check", required=false) boolean secret_check,
			@RequestParam(value="content", required=false) String content)
	{

		if(title == null){
			title = "(제목없음)";
		}
		if(content == null){
			content = "(내용없음)";
		}
		
		String qna_pw = null;
		
		if(secret_check){
			if(password == null || password.isEmpty()){
				password = "0000";
				System.out.println("기본 비밀번호 설정");
			}
			qna_pw = password;
		}
		int r = qnaSvc.addQna(title, content, qna_pw, writer);
		
		if(r==1){
			System.out.println("글 등록 성공");
		}else {
			System.out.println("글 등록 실패");
		}
		
		return "redirect:/board/qna.nm";
	}
	

	// QNA 글쓰기 사용자가 글편집하는 화면
	@RequestMapping(value="/board/qna/edit_form.nm", method=RequestMethod.GET)
	public ModelAndView prepareEditQnaForm(HttpServletRequest req,
			@RequestParam(value="qe_no") String qe_no){
		
		int qna_no;
		QnaVo qna_vo;
		
		Map<String,Object> map = new HashMap<String,Object>();
		try{
			if(qe_no!=null){
				qna_no = Integer.parseInt(qe_no);
				qna_vo = qnaSvc.getOneSimpleQna(qna_no);
				map.put("qvo", qna_vo);
				map.put("qwe", true);
			}
		} catch(Exception e){
			e.printStackTrace();
			System.out.println("글 편집 정보 받아오기 실패");
		}
		
		return new ModelAndView("board/qna/b_qna", map);
	}
	
	// QNA 글쓰기 사용자가 글편집 하는 과정
	@RequestMapping(value="/board/qna/edit_proc.nm", method=RequestMethod.POST)
	public String editOldQna(HttpServletRequest req,
			@RequestParam(value="qe_no", required=false) String qe_no,
			@RequestParam(value="title", required=false) String title,
			@RequestParam(value="writer", required=false) String writer,
			@RequestParam(value="password", required=false) String password,
			@RequestParam(value="secret_check", required=false) boolean secret_check,
			@RequestParam(value="content", required=false) String content)
	{
		int qna_no;
		String qna_pw = null;
		
		if(secret_check){
			if(password == null || password.isEmpty()){
				password = "0000";
				System.out.println("기본 비밀번호 설정");
			}
			qna_pw = password;
		}

		if(title == null){
			title = "(제목없음)";
		}
		if(content == null){
			content = "(내용없음)";
		}
		
		try{
			if(qe_no!=null){
				qna_no = Integer.parseInt(qe_no);
				int r = qnaSvc.editQna(qna_no, title, content, qna_pw);
				
				if(r==1){
					System.out.println("글 수정 성공");
				}else {
					System.out.println("글 수정 실패");
				}
				
			}

		} catch(Exception e){
			e.printStackTrace();
			System.out.println("글 편집 정보 받아오기 실패");
		}
		
		return "redirect:/board/qna.nm";
	}
	
	
	//  /soap/board/delete_proc.nm?
	// QNA 글쓰기 사용자가 글편집 하는 과정
	@RequestMapping(value="/board/qna/delete_proc.nm", method=RequestMethod.GET)
	public String removeQnaProcess(HttpServletRequest req,
			@RequestParam(value="qd_no") String qd_no){
		int qna_no;
		try{
			if(qd_no!=null){
				qna_no = Integer.parseInt(qd_no);
				int r = qnaSvc.removeQna(qna_no);

				if(r == 1){
					qnaSvc.removeQnaByRef(qna_no); //하위에 연결된 답변글 모두 지움
				}else{
					System.out.println("글 삭제 실패");
				}
			}
		} catch(Exception e){
			System.out.println("글삭제 정보 받아오기 실패");
		}
		return "redirect:/board/qna.nm";
	}
}