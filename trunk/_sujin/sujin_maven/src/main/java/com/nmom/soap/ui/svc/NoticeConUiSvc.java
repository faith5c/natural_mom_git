package com.nmom.soap.ui.svc;

import java.util.List;

import com.nmom.soap.data.dao.board.notice.IVNoticeDao;
import com.nmom.soap.data.impl.board.notice.NoticeDaoOraImpl;
import com.nmom.soap.data.impl.board.notice.NoticeReDaoOraImpl;
import com.nmom.soap.data.impl.board.notice.VNoticeDaoOraImpl;
import com.nmom.soap.data.model.board.notice.NoticeReVo;
import com.nmom.soap.data.model.board.notice.NoticeVo;
import com.nmom.soap.data.model.board.notice.VNoticeVo;

public class NoticeConUiSvc extends ConUiSvc {
	
	private IVNoticeDao vNoticeDaoOra;
	private NoticeDaoOraImpl noticeDaoOra;
	private NoticeReDaoOraImpl noticeReDaoOra;
	
	final int NOTICE_LIST = 1;
	final int NOTICE_READ = 2;
	final int NOTICE_WITRE = 3;
	final int NOTICE_UPDATE = 4;
	final int NOTICE_DELELT = 5;
	final int NOTICE_RE_WITRE = 6;
	final int NOTICE_RE_UPDATE = 7;
	final int NOTICE_RE_DELELT = 8;
	final int NOTICE_SEARCH_BY_TITLE = 9;
	final int NOTICE_SEARCH_BY_CONTENT = 10;
	final int NOTICE_SEARCH_BY_ID = 11;
	final int NOTICE_SEARCH_BY_TITLE_N_CONTENT = 12;
	final int EXIT =13;
	final int PREV = 0;

	
	@Override
	public void showMenu() {
		System.out.println(" 1. NOTICE_LIST");
		System.out.println(" 2. NOTICE_READ(notice_no)");
		System.out.println(" 3. NOTICE_WITRE");
		System.out.println(" 4. NOTICE_UPDATE(notice_no)");
		System.out.println(" 5. NOTICE_DELELT(notice_no)");
		System.out.println(" 6. NOTICE_RE_WITRE");
		System.out.println(" 7. NOTICE_RE_UPDATE(notice_re_no)");
		System.out.println(" 8. NOTICE_RE_DELELT(notice_re_no)");
		System.out.println(" 9. NOTICE_SEARCH_BY_TITLE");
		System.out.println(" 10. NOTICE_SEARCH_BY_CONTENT");
		System.out.println(" 11. NOTICE_SEARCH_BY_ID");
		System.out.println(" 12. NOTICE_SEARCH_BY_TITLE_N_CONTENT");
		System.out.println(" 13. EXIT");
		System.out.println(" 0. PREV");
		System.out.print(" >> ");
		
	}

	@Override
	public void execFunctions(int num) {
		switch (num) {
		case NOTICE_LIST:
			getNoticeList(vNoticeDaoOra.getAllNotice(2, 5));
			System.out.println(vNoticeDaoOra.getAllCount());
			break;
		case NOTICE_SEARCH_BY_TITLE:
			getNoticeList(vNoticeDaoOra.getSearchByTitleNotice("휴무", 2, 5));
			System.out.println(vNoticeDaoOra.getAllCountByTitle("휴무"));
			break;
		case NOTICE_SEARCH_BY_CONTENT:
			getNoticeList(vNoticeDaoOra.getSearchByContentNotice("자연맘", 2, 5));
			System.out.println(vNoticeDaoOra.getAllCountByContent("자연맘"));
			break;
			
		case NOTICE_SEARCH_BY_ID:
			getNoticeList(vNoticeDaoOra.getSearchByIdNotice("admin", 2, 5));
			System.out.println(vNoticeDaoOra.getAllCountById("admin"));
			break;
			
		case NOTICE_SEARCH_BY_TITLE_N_CONTENT:
			getNoticeList(vNoticeDaoOra.getSearchByTitleNContentNotice("휴무",2, 5));
			System.out.println(vNoticeDaoOra.getAllCountByTitleNContent("휴무"));
			break;
		
		case NOTICE_READ:
			readNotice(noticeDaoOra.getNotice(1));
			readNoticeRe(noticeReDaoOra.getAllNoticeRe(1));
			break;
			
		case NOTICE_WITRE:
			writeNotice(noticeDaoOra.addNotice(
					new NoticeVo("새로운 공지사항이다. 잘 들어라", 
							"내용은 없다.", 
							null, 
							null, 
							"admin01")));
			
			getNoticeList(vNoticeDaoOra.getAllNotice(2, 5));
			break;
			
		case NOTICE_UPDATE:
			updateNotice(noticeDaoOra.editNotice(
					new NoticeVo(5, 
							"뉴 공지사항이다. 잘 들어라", 
							"내용은 없다.", 
							null, 
							null, 
							"admin01")));
			getNoticeList(vNoticeDaoOra.getAllNotice(2, 5));
			break;
			
		case NOTICE_DELELT:
			deleteNotice(noticeDaoOra.removeNotice(5, "admin01"));
			getNoticeList(vNoticeDaoOra.getAllNotice(2, 5));
			break;
			
		case NOTICE_RE_WITRE:
			writeNoticeRe(noticeReDaoOra.addNoticeRe(
					new NoticeReVo("오픈 축축", 
							1, 
							"sora", 
							0)));
			
			readNotice(noticeDaoOra.getNotice(1));
			readNoticeRe(noticeReDaoOra.getAllNoticeRe(1));
			break;
			
		case NOTICE_RE_UPDATE:
			updateNoticeRe(noticeReDaoOra.editNoticeRe(
					new NoticeReVo("오픈 축축하하호호", 
							8, 
							"sora")));
			
			readNotice(noticeDaoOra.getNotice(1));
			readNoticeRe(noticeReDaoOra.getAllNoticeRe(1));
			break;
			
		case NOTICE_RE_DELELT:
			deleteNoticeRe(noticeReDaoOra.removeNoticeRe(8, "sora"));
			readNotice(noticeDaoOra.getNotice(1));
			readNoticeRe(noticeReDaoOra.getAllNoticeRe(1));
			break;
			
		case EXIT:
			System.exit(0);
			break;
			
		case PREV :
			
			break;
		default:
			System.exit(0);
			break;
		}
		
	}
	
	private void deleteNoticeRe(int removeNoticeRe) {
		if(removeNoticeRe == 1)System.out.println("리플 삭제 성공");
		else System.out.println("리플 삭제 실패");
	}

	private void updateNoticeRe(int editNoticeRe) {
		if(editNoticeRe == 1)System.out.println("리플 갱신 성공");
		else System.out.println("리플 갱신 실패");
	}

	private void writeNoticeRe(int addNoticeRe) {
		if(addNoticeRe == 1)System.out.println("리플 추가 성공");
		else System.out.println("리플 추가 실패");
	}

	private void readNoticeRe(List<NoticeReVo> allNoticeRe) {
		for(NoticeReVo nv : allNoticeRe){
			System.out.println(nv.toString());
		}
	}

	private void deleteNotice(int removeNotice) {
		if(removeNotice == 1)System.out.println("공지사항 삭제 성공");
		else System.out.println("공지사항 삭제 실패");
	}

	private void updateNotice(int editNotice) {
		if(editNotice == 1)System.out.println("공지사항 갱신 성공");
		else System.out.println("공지사항 갱신 실패");
	}

	private void writeNotice(int addNotice) {
		if(addNotice == 1)System.out.println("공지사항 추가 성공");
		else System.out.println("공지사항 추가 실패");
		
	}

	private void readNotice(NoticeVo notice) {
		System.out.println(notice);
	}

	public void getNoticeList(List<VNoticeVo> list){
		for(VNoticeVo nv : list){
			System.out.println(nv.toString());
		}
	}
	

	public void setvNoticeDaoOra(VNoticeDaoOraImpl vNoticeDaoOra) {
		this.vNoticeDaoOra = vNoticeDaoOra;
	}

	public void setNoticeDaoOra(NoticeDaoOraImpl noticeDaoOra) {
		this.noticeDaoOra = noticeDaoOra;
	}

	public void setNoticeReDaoOra(NoticeReDaoOraImpl noticeReDaoOra) {
		this.noticeReDaoOra = noticeReDaoOra;
	}
	
}
