package com.nmom.soap.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
		
		List<VQnaQnaReVo> qna_list = vQnaQnareSvc.getAllQna((pi * S.PAGE_LIMIT)+1, (pi+1) * S.PAGE_LIMIT);
		//1~10  11~20  21~30
				
		if(qna_list != null){
			map.put("qna_list", qna_list);

			int qna_count = vQnaQnareSvc.getQnaCount();
			map.put("qna_count", qna_count);
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
		int qna_count;
		
		if(sch.equals("tt")){
			qna_list = vQnaQnareSvc.searchQnaTitle(kw, (pi * S.PAGE_LIMIT)+1, (pi+1) * S.PAGE_LIMIT);
			qna_count = vQnaQnareSvc.getSearchQnaTitleCount(kw);;
			
		}else if(sch.equals("con")){
			qna_list = vQnaQnareSvc.searchQnaContent(kw, (pi * S.PAGE_LIMIT)+1, (pi+1) * S.PAGE_LIMIT);
			qna_count = vQnaQnareSvc.getSearchQnaContentCount(kw);
			
		}else if(sch.equals("ttcon")){
			qna_list = vQnaQnareSvc.searchQnaTitleNContent(kw, (pi * S.PAGE_LIMIT)+1, (pi+1) * S.PAGE_LIMIT);
			qna_count = vQnaQnareSvc.getSearchQnaTitleNContentCount(kw);
		}else {
			qna_list = vQnaQnareSvc.getAllQna(pi * (pi * S.PAGE_LIMIT)+1, (pi+1) * S.PAGE_LIMIT);
			qna_count = vQnaQnareSvc.getQnaCount();
		}
		
		if(qna_list != null){
			map.put("qna_list", qna_list);
			map.put("qna_count", qna_count);
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
	public ModelAndView prepareAddQnaForm(HttpServletRequest req,
			@RequestParam(value="pos", required = false) String pos,
			@RequestParam(value="ref", required = false) String ref)
	{
		Map<String,Object> map = new HashMap<String,Object>();
		if(pos!=null && ref!=null){
			try{
				QnaVo ori_qvo = qnaSvc.getSimpleQnaByRefNPos(Integer.parseInt(ref), Integer.parseInt(pos));
				map.put("answer", ori_qvo);
				
			} catch(Exception e){
				System.out.println("원글정보 가져오기 실패");
			}
		}
		
		map.put("qwa", true); //qnq write add
		return new ModelAndView("board/qna/b_qna", map);
	}

	// QNA 글쓰기 사용자가 작성하는 과정
	@RequestMapping(value="/board/qna/add_proc.nm", method=RequestMethod.POST)
	public String addNewQna(HttpServletRequest req,
			@RequestParam(value="title", required=false) String title,
			@RequestParam(value="writer", required=false) String writer,
			@RequestParam(value="password", required=false) String password,
			@RequestParam(value="secret_check", required=false) boolean secret_check,
			@RequestParam(value="content", required=false) String content,
			@RequestParam(value="old_qna_ref", required=false) String old_qna_ref,
			@RequestParam(value="old_qna_pos", required=false) String old_qna_pos
			)
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
		
		if(old_qna_ref!=null && old_qna_pos!=null){ //답변글

			int qna_parent_ref;
			int qna_parent_pos;
			
			try{
				int r;
				
				qna_parent_ref = Integer.parseInt(old_qna_ref);
				qna_parent_pos = Integer.parseInt(old_qna_pos);
				
				System.out.println("old_qna_ref : "+old_qna_ref);
				System.out.println("old_qna_pos : "+old_qna_pos);
				
				int move = qnaSvc.pushRearPos(qna_parent_ref, qna_parent_pos); //뒤로 밀어내 내 자리 마련함
				r = qnaSvc.addQnaAnswer(title, content, qna_pw, writer, qna_parent_pos+1, qna_parent_ref);
				
				if(move==0){
					System.out.println("내가 끝이야");
				} else {
					System.out.println("내가 밀었어");
				}
				
				/*if(qna_pos == 0){ //다른 답글 없음. 내가 맨처음다는 답글
					r = qnaSvc.addQnaAnswer(title, content, qna_pw, writer, 1, qna_ref);
					System.out.println("내가 맨 처음");
					
				} else { //다른 답글들이 있었으면
					
				}
				*/
				if(r==1){
					System.out.println("답변 등록 성공");
				}else {
					System.out.println("답변 등록 실패");
				}
				
			} catch(Exception e){
				e.printStackTrace();
				System.out.println("답변추가시 정보 가져오기 실패");
			}
			
		} else { //일반글
			int r = qnaSvc.addQna(title, content, qna_pw, writer);
			if(r==1){
				System.out.println("글 등록 성공");
			}else {
				System.out.println("글 등록 실패");
			}
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
				map.put("qwe", true); //qna write edit
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
	// QNA 글쓰기 사용자가 글삭제 하는 과정
	@RequestMapping(value="/board/qna/delete_proc.nm", method=RequestMethod.GET)
	public String removeQnaProcess(HttpServletRequest req,
			@RequestParam(value="qd_no") String qd_no,
			@RequestParam(value="ref") String ref,
			@RequestParam(value="pos") String pos){

		int qna_no;
		int qna_ref;
		int qna_pos;
		
		try{
			if(qd_no!=null && ref!=null && pos!=null){
				qna_no = Integer.parseInt(qd_no);
				qna_ref = Integer.parseInt(ref);
				qna_pos = Integer.parseInt(pos);
				
				int r = qnaSvc.removeQna(qna_no); //선택된 글 삭제
				if(r != 1){
					System.out.println("글 삭제 실패");
					return "redirect:/board/qna.nm";
				}
				
				if(qna_pos == 0){ //첫번째 글인 경우 하위에 연결된 답변글을 모두 지움
					qnaSvc.removeQnaByRef(qna_ref); //하위 글 삭제
				} 
				else { //답글인 경우 하위에 연결된 글을 당겨와야함
					qnaSvc.pushFrontPos(qna_ref, qna_pos);
				}
			}
		} catch(Exception e){
			System.out.println("글삭제 정보 받아오기 실패");
		}
		return "redirect:/board/qna.nm";
	}
	
	
	// /board/qna/read/add_reply_proc.nm
	// 댓글 등록하기
	@RequestMapping(value="/board/qna/read/add_reply_proc.nm", method=RequestMethod.POST)
	public String addQnaReplyProcess(HttpServletRequest req, HttpSession ses,
			@RequestParam(value="qr_no") String qr_no,
			@RequestParam(value="rn") String rn,
			@RequestParam(value="dat_text") String dat_text)
	{
		String dat_content="";
		int qna_no;
		int qna_rownum;
		String writer = (String)ses.getAttribute("loggedin");
		
		if(writer!=null && qr_no!=null && rn!=null && dat_text!=null){
			if(!dat_text.isEmpty()){
				dat_content = dat_text;
			}
			
			try{
				qna_no = Integer.parseInt(qr_no);
				qna_rownum = Integer.parseInt(rn);
				int r = qnaReSvc.addQnaRe(dat_content, qna_no, writer);

				if(r != 1){
					System.out.println("댓글 등록 실패");
				}
				
				return "redirect:/board/qna/read.nm?qr_no="+qna_no+"&rn="+qna_rownum;
			} catch(Exception e){
				System.out.println("댓글 등록 정보 못받아옴");
				e.printStackTrace();
			}
		
		}
		return "redirect:/board/qna.nm";
	}

	// /board/qna/read/del_reply_proc.nm
	// 댓글 삭제하기
	@RequestMapping(value="/board/qna/read/del_reply_proc.nm", method=RequestMethod.GET)
	public String removeQnaReplyProcess(HttpServletRequest req,
			@RequestParam(value="qr_no") String qr_no,
			@RequestParam(value="rn") String rn,
			@RequestParam(value="reno") String reno)
	{
		int qna_no;
		int qna_rownum;
		int qna_re_no;
		
		if(reno!=null && qr_no!=null && rn!=null){
			
			try{
				qna_no = Integer.parseInt(qr_no);
				qna_rownum = Integer.parseInt(rn);
				qna_re_no = Integer.parseInt(reno);
				int r = qnaReSvc.removeQnaRe(qna_re_no);

				if(r != 1){
					System.out.println("댓글 삭제 실패");
				}
				
				return "redirect:/board/qna/read.nm?qr_no="+qna_no+"&rn="+qna_rownum;
			} catch(Exception e){
				System.out.println("댓글 삭제 정보 못받아옴");
				e.printStackTrace();
			}
		
		}
		return "redirect:/board/qna.nm";		
	}
}