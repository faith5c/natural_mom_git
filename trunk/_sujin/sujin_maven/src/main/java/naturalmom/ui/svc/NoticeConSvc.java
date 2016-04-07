package naturalmom.ui.svc;

import java.util.List;

import naturalmom.data.dao.IVNoticeDao;
import naturalmom.data.dao.impl.NoticeDaoOraImpl;
import naturalmom.data.dao.impl.NoticeReDaoOraImpl;
import naturalmom.data.dao.impl.VNoticeDaoOraImpl;
import naturalmom.data.model.NoticeReVo;
import naturalmom.data.model.NoticeVo;
import naturalmom.data.model.VNoticeVo;

public class NoticeConSvc extends ConUiSvc {
	
	private IVNoticeDao vNoticeDaoOra;
	private NoticeDaoOraImpl noticeDaoOra;
	private NoticeReDaoOraImpl noticeReDaoOra;
	
	final int NOTICE_LIST = 1;
	final int NOTICE_READ = 2;
	final int NOTICE_WITRE = 3;
	final int NOTICE_UPDATE = 4;
	final int NOTICE_DELELT = 5;
	final int EXIT = 6;

	
	@Override
	public void showMenu() {
		System.out.println(" 1. NOTICE_LIST");
		System.out.println(" 2. NOTICE_READ(notice_no)");
		System.out.println(" 3. NOTICE_WITRE");
		System.out.println(" 4. NOTICE_UPDATE(notice_no)");
		System.out.println(" 5. NOTICE_DELELT(notice_no)");
		System.out.println(" 6. EXIT");
		System.out.println(" 0. PREV");
		System.out.print(" >> ");
		
	}

	@Override
	public void execFunctions(int num) {
		switch (num) {
		case NOTICE_LIST:
			getNoticeList(vNoticeDaoOra.getAllNotice(1, 5));
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
			
			getNoticeList(vNoticeDaoOra.getAllNotice(1, 5));
			break;
			
		case NOTICE_UPDATE:
			updateNotice(noticeDaoOra.editNotice(
					new NoticeVo(5, 
							"뉴 공지사항이다. 잘 들어라", 
							"내용은 없다.", 
							null, 
							null, 
							"admin01")));
			getNoticeList(vNoticeDaoOra.getAllNotice(1, 5));
			break;
			
		case NOTICE_DELELT:
			deleteNotice(noticeDaoOra.removeNotice(5, "admin01"));
			getNoticeList(vNoticeDaoOra.getAllNotice(1, 5));
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
	
	private void readNoticeRe(List<NoticeReVo> allNoticeRe) {
		for(NoticeReVo nv : allNoticeRe){
			System.out.println(nv.toString());
		}
	}

	private void deleteNotice(int removeNotice) {
		if(removeNotice == 1)System.out.println("삭제 성공");
		else System.out.println("삭제 실패");
	}

	private void updateNotice(int editNotice) {
		if(editNotice == 1)System.out.println("갱신 성공");
		else System.out.println("갱신 실패");
	}

	private void writeNotice(int addNotice) {
		if(addNotice == 1)System.out.println("추가 성공");
		else System.out.println("추가 실패");
		
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
