package naturalmom.ui.svc;

import naturalmom.data.dao.impl.VOrderListDaoOraImpl;

public class OrderListConSvc extends ConUiSvc {

	private VOrderListDaoOraImpl vOrderListDaoOra;
	
	@Override
	public void showMenu() {
		
	}

	@Override
	public void execFunctions(int num) {
		
	}

	
	public void setVOrderListDaoOra(VOrderListDaoOraImpl vOrderListDaoOra) {
		vOrderListDaoOra = vOrderListDaoOra;
	}

}
