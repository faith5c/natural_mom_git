package naturalmom.ui.svc;

import java.util.List;

import naturalmom.data.dao.IVNoticeDao;
import naturalmom.data.dao.impl.VNoticeDaoOraImpl;
import naturalmom.data.model.VNoticeVo;

public class NoticeConSvc extends ConUiSvc {
	
	private IVNoticeDao vNoticeDaoOra;
	
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
		System.out.print(" >> ");
		
	}

	@Override
	public void execFunctions(int num) {
		switch (num) {
		case NOTICE_LIST:
			showNotice(vNoticeDaoOra.getAllNotice(1, 5));
			break;
			
		case NOTICE_READ:
			
			break;
			
		case NOTICE_WITRE:
			
			break;
			
		case NOTICE_UPDATE:
			
			break;
			
		case NOTICE_DELELT:
			
			break;
			
		case EXIT:
			System.exit(0);
			break;
			
		default:
			System.exit(0);
			break;
		}
		
	}

	public void setvNoticeDaoOra(VNoticeDaoOraImpl vNoticeDaoOra) {
		this.vNoticeDaoOra = vNoticeDaoOra;
	}
	
	public void showNotice(List<VNoticeVo> list){
		for(VNoticeVo nv : list){
			System.out.println(nv.toString());
		}
	}
	
}
