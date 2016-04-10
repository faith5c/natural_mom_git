package naturalmom.ui.svc;

import naturalmom.data.dao.impl.SaleStatementOraDaoImpl;
import naturalmom.data.model.SaleStatementVo;

public class SaleStatementConUiSvc extends ConUiSvc {

	private SaleStatementOraDaoImpl saleStatementOraDao;
	
	final int SALESTATEMENT_LIST = 1;
	final int EXIT = 2;
	final int PREV = 0;
	@Override
	public void showMenu() {
		System.out.println(" 1. SALESTATEMENT_LIST");
		System.out.println(" 2. EXIT");
		System.out.println(" 0. PREV");
		System.out.print(" >> ");
	}

	@Override
	public void execFunctions(int num) {
		// TODO Auto-generated method stub
		switch (num) {
		case SALESTATEMENT_LIST: //1
			System.out.println("전체");
			getSaleStatement(saleStatementOraDao.getSaleStatement());
			System.out.println("당일");
			getSaleStatement(saleStatementOraDao.getSaleStatement("2016-04-04"));
			System.out.println("기간");
			getSaleStatement(saleStatementOraDao.getSaleStatement("2016-04-01", "2016-04-02"));
			break;
			
		case EXIT: //2
			System.exit(0);
			break;
			
		case PREV : //0
			
			break;
		default:
			System.exit(0);
			break;
		}
	}

	private void getSaleStatement(SaleStatementVo saleStatement) {
		System.out.println(saleStatement);
	}

	public void setSaleStatementOraDao(SaleStatementOraDaoImpl saleStatementOraDao) {
		this.saleStatementOraDao = saleStatementOraDao;
	}

	
}
