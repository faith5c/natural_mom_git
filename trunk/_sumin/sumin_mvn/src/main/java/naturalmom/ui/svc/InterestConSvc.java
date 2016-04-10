package naturalmom.ui.svc;

import naturalmom.data.dao.IInterestDao;
import naturalmom.data.dao.IVInterestProductDao;

public class InterestConSvc extends ConSvc{
	IInterestDao interestDao;
	IVInterestProductDao vInterestDao;

	public void setVInterestDao(IVInterestProductDao vInterestDao) {
		this.vInterestDao = vInterestDao;
	}
	public void setInterestDao(IInterestDao interestDao) {
		this.interestDao = interestDao;
	}

	public void show() {
		// TODO Auto-generated method stub
		
	}
}
