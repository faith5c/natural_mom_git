package naturalmom.ui.svc;

import naturalmom.data.dao.IQnaDao;
import naturalmom.data.dao.IQnaReDao;
import naturalmom.data.dao.IVQnaQnareDao;

public class QnaConSvc extends ConSvc{
	IQnaDao qnaDao;
	IQnaReDao qnaReDao;
	IVQnaQnareDao vQnaQnareDao;

	public void setVQnaQnareDao(IVQnaQnareDao vQnaQnareDao) {
		this.vQnaQnareDao = vQnaQnareDao;
	}
	public void setQnaReDao(IQnaReDao qnaReDao) {
		this.qnaReDao = qnaReDao;
	}

	public void setQnaDao(IQnaDao qnaDao) {
		this.qnaDao = qnaDao;
	}

	public void show() {
		// TODO Auto-generated method stub
		
	}
}
