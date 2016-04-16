package com.nmom.soap.controller;

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
import com.nmom.soap.data.model.board.notice.NoticeReVo;
import com.nmom.soap.data.model.board.notice.NoticeVo;
import com.nmom.soap.data.model.board.notice.VNoticeVo;
import com.nmom.soap.svc.board.notice.INoticeReSvc;
import com.nmom.soap.svc.board.notice.INoticeSvc;
import com.nmom.soap.svc.board.notice.IVNoticeSvc;

@Controller
public class NoticeController {

	private INoticeSvc noticeSvc;
	private INoticeReSvc noticeReSvc;
	private IVNoticeSvc vNoticeSvc;
	
	public void setNoticeSvc(INoticeSvc noticeSvc) {
		this.noticeSvc = noticeSvc;
	}
	public void setNoticeReSvc(INoticeReSvc noticeReSvc) {
		this.noticeReSvc = noticeReSvc;
	}
	public void setVNoticeSvc(IVNoticeSvc vNoticeSvc) {
		this.vNoticeSvc = vNoticeSvc;
	}
	
	//공지사항 리스트(회원)
	@RequestMapping (value="/board/notice.nm", method=RequestMethod.GET)
	public ModelAndView getAllNoticeM(HttpServletRequest req,
			@RequestParam(value="ab", required=false) String allBlock,
			@RequestParam(value="nb", required=false) String nowBlock,
			@RequestParam(value="k", required=false) String kind,
			@RequestParam(value="s", required=false) String search){
		
		System.out.println("콘트롤러 공지사항 리스트 진입");
		//블럭은 페이지 10개씩의 단위 첫페이지는 무조건 1
		int block = 1;
		
		//블럭 갯수
		int blockNums = 1;
		
		//전체 페이지 수
		int allPages = 0;
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		if( nowBlock != null && !nowBlock.isEmpty() && !nowBlock.equals("")){
			try{
				block = Integer.parseInt(nowBlock);
			}catch(NumberFormatException ne){
				ne.printStackTrace();
			}
			
		}
		if( search == null || search.isEmpty() || search.equals("") ){
			allPages = vNoticeSvc.getAllCount();
			System.out.println("콘트롤러 기본 페이지 삽입 진입");
			List<VNoticeVo> list = this.vNoticeSvc.getAllNotice(block, allPages);
			System.out.println(list.get(0));
			if(allPages > 0)
			blockNums = (int)Math.ceil((double)allPages/S.PAGE_LIMIT);
		
			map.put("ab", blockNums);
			map.put("nb", block);
			map.put("no_list", list);
			return new ModelAndView("/board/notice/b_notice", map);
		}
		if( search != null && !search.isEmpty() && !!search.equals("") ){
			switch(kind){
			case "제목":
				
				break;
				
			case "내용" :
				
				break;
				
			case "제목+내용" :
				
				break;
			}
		}
		return new ModelAndView("/board/notice/b_notice");
	}
	
	//공지사항 글 상세보기(회원)
	@RequestMapping (value="/board/notice_read.nm", method=RequestMethod.GET)
	public ModelAndView getNoticeA(HttpServletRequest req,
			HttpSession ses,
			@RequestParam(value="r", required=false) String notice_no){
		
		int no = 0;
		
		if (notice_no != null && !notice_no.isEmpty() && !notice_no.equals("")) {
			try {
				no = Integer.parseInt(notice_no);
				int r = this.noticeSvc.incrementHit(no);
			} catch (NumberFormatException ne) {
				ne.printStackTrace();
			}
			System.out.println("게시글 번호"+no);
		}
		NoticeVo notice = this.noticeSvc.getNotice(no);
		if(notice != null){
			Map<String, Object> map = new HashMap<>();
			List<NoticeReVo> reply = this.noticeReSvc.getAllNoticeRe(no);
			int prev_notice = this.noticeSvc.getPrevNoticeNo(no);
			if( prev_notice > 0 ) map.put("prev", prev_notice);
			
			int next_notice = this.noticeSvc.getNextNoticeNo(no);
			if( next_notice > 0 ) map.put("next", next_notice);
			System.out.println("이전"+prev_notice+" 다음"+next_notice);
			
			if(reply.size() > 0){
				map.put("re_list", reply);
			}
			map.put("r", no);
			
			map.put("no", notice);
			return new ModelAndView("/board/notice/b_notice", map);
		}
		
		if(notice_no == null || notice_no.isEmpty() || notice_no.equals("") || no == 0){	
			return new ModelAndView("/board/notice/b_notice");
		}
			
		return null;
	}
	
	//공지사항 댓글 달기(회원)
	
	//공지사항 댓글 수정(회원)
	
	//공지사항 댓글 삭제(회원)
	
	//공지사항 리스트(어드민)
	@RequestMapping (value="admin/board/notice.nm", method=RequestMethod.GET)
	public ModelAndView getAllNoticeA(HttpServletRequest req,
			HttpSession ses,
			@RequestParam(value="ab", required=false) String allBlock,
			@RequestParam(value="nb", required=false) String nowBlock,
			@RequestParam(value="k", required=false) String kind,
			@RequestParam(value="s", required=false) String search){
		
		System.out.println("콘트롤러 공지사항 리스트 진입");
		//블럭은 페이지 10개씩의 단위 첫페이지는 무조건 1
		
		//어드민이 투루가 아닐경우 프론트 페이지로 ㄱㄱ
		if(ses.getAttribute("admin") == null || !ses.getAttribute("admin").equals("true")){
			return new ModelAndView("index");
		}
		
		int block = 1;
		
		//블럭 갯수
		int blockNums = 1;
		
		//전체 페이지 수
		int allPages = 0;
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		if( nowBlock != null && !nowBlock.isEmpty() && !nowBlock.equals("")){
			try{
				block = Integer.parseInt(nowBlock);
			}catch(NumberFormatException ne){
				ne.printStackTrace();
			}
			
		}
		if( search == null || search.isEmpty() || search.equals("") ){
			allPages = vNoticeSvc.getAllCount();
			System.out.println("콘트롤러 기본 페이지 삽입 진입");
			List<VNoticeVo> list = this.vNoticeSvc.getAllNotice(block, allPages);
			System.out.println(list.get(0));
			if(allPages > 0)
			blockNums = (int)Math.ceil((double)allPages/S.PAGE_LIMIT);
		
			map.put("ab", blockNums);
			map.put("nb", block);
			map.put("no_list", list);
			return new ModelAndView("/admin/board/notice/a_notice", map);
		}
		
		return null;
	}
	
	//공지사항 글 상세보기(어드민)
	
	//공지사항 글 추가하기(어드민)
	
	//공지사항 글 수정하기(어드민)
	
	//공지사항 댓글 달기(어드민)
	
	//공지사항 댓글 수정(어드민)
	
	//공지사항 댓글 삭제(어드민)
	
}
