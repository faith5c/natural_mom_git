package naturalmom.ui.svc;

import java.util.List;

import naturalmom.data.dao.IInterestDao;
import naturalmom.data.dao.IVInterestProductDao;
import naturalmom.data.model.InterestVo;
import naturalmom.data.model.VInterestProductVo;

public class InterestConSvc extends ConSvc{

	private final int CHOICE_GET_ALL_INTEREST = 1;
	private final int CHOICE_GET_INTEREST_BY_MEM_ID = 2;
	
	private final int CHOICE_DUPLICATION_INTEREST_PRODUCT = 3;
	private final int CHOICE_ADD_INTEREST_PRODUCT_BY_INTEREST = 4;
	private final int CHOICE_ADD_INTEREST_PRODUCT = 5;
	private final int CHOICE_REMOVE_INTEREST_PRODUCT_BY_INTEREST = 6;
	private final int CHOICE_REMOVE_INTEREST_PRODUCT = 7;
	private final int CHOICE_EXIT = 8;
	
	private final int MIN_NUM = CHOICE_GET_ALL_INTEREST;
	private final int MAX_NUM = CHOICE_EXIT;
	
	IInterestDao interestDao;
	IVInterestProductDao vInterestProductDao;

	public void setVInterestProductDao(IVInterestProductDao vInterestDao) {
		this.vInterestProductDao = vInterestDao;
	}
	public void setInterestDao(IInterestDao interestDao) {
		this.interestDao = interestDao;
	}

	public void showMenu(){
		System.out.println(line1);
		System.out.println("choice INTEREST menu");
		System.out.println(line2);
		System.out.println("1. get All Interest");
		System.out.println("2. get Interest By MemId");
		System.out.println(line2);
		System.out.println("3. duplication Interest Product");
		System.out.println("4. add Interest Product By Interest");
		System.out.println("5. add Interest Product");
		System.out.println("6. remove Interest Product By Interest");
		System.out.println("7. remove Interest Product");
		System.out.println("8. Exit\n");
	}
	
	public void show() {
		String str = null;
		String strArr[] = null;
		List<VInterestProductVo> vlist = null;
		InterestVo iv = new InterestVo();

		showMenu();
		int num = checkNumberMinMax(MIN_NUM, MAX_NUM, inputUser());
		
		switch(num){
		case CHOICE_GET_ALL_INTEREST:
			vlist = vInterestProductDao.getAllInterest();
			for(VInterestProductVo vi : vlist){
				System.out.println(vi);
			}
			inputEnter();
			this.show();
			break;
			
		case CHOICE_GET_INTEREST_BY_MEM_ID:
			System.out.println("INPUT : mem_id");
			str = inputUser();
			vlist = vInterestProductDao.getInterestByMemId(str);
			for(VInterestProductVo vi : vlist){
				System.out.println(vi);
			}
			inputEnter();
			this.show();
			break;
			
		case CHOICE_DUPLICATION_INTEREST_PRODUCT:
			
			System.out.println("INPUT : product_no, mem_id");
			
			try{
				strArr = StrSplitTrim(inputUser());
			
				if(interestDao.duplicationInterestProduct(Integer.parseInt(strArr[0]), strArr[1])){
					System.out.println("RESULT : duplication");
				}else{
					System.out.println("RESULT : unique");
				}
			} catch(Exception e){
				e.printStackTrace();
			}
			
			inputEnter();
			this.show();
			break;
			
		case CHOICE_ADD_INTEREST_PRODUCT_BY_INTEREST:

			System.out.println("INPUT : product_no, mem_id");
			
			try{
				strArr = StrSplitTrim(inputUser());

				if(!interestDao.duplicationInterestProduct(Integer.parseInt(strArr[0]), strArr[1])){
					
					iv = new InterestVo();
					iv.setProduct_no(Integer.parseInt(strArr[0]));
					iv.setMem_id(strArr[1]);
					
					if(0 < interestDao.addInterestProduct(iv)){
						System.out.println("RESULT : add success");
					}else{
						System.out.println("RESULT : add failure");
					}
					
				} else {
					System.out.println("ERR : duplicated interest");
				}
				
			} catch(Exception e){
				e.printStackTrace();
			}
			
			inputEnter();
			this.show();
			break;
			
		case CHOICE_ADD_INTEREST_PRODUCT:

			System.out.println("INPUT : product_no, mem_id");
			
			try{
				strArr = StrSplitTrim(inputUser());
				if(!interestDao.duplicationInterestProduct(Integer.parseInt(strArr[0]), strArr[1])){

					if(0 < interestDao.addInterestProduct(Integer.parseInt(strArr[0]), strArr[1])){
						System.out.println("RESULT : add success");
					}else{
						System.out.println("RESULT : add failure");
					}
				} else {
					System.out.println("ERR : duplicated interest");
				}
				
			} catch(Exception e){
				e.printStackTrace();
			}
			
			inputEnter();
			this.show();
			break;
			
		case CHOICE_REMOVE_INTEREST_PRODUCT_BY_INTEREST:

			System.out.println("INPUT : product_no, mem_id");
			
			try{
				strArr = StrSplitTrim(inputUser());

				if(interestDao.duplicationInterestProduct(Integer.parseInt(strArr[0]), strArr[1])){
	
					iv = new InterestVo();
					iv.setProduct_no(Integer.parseInt(strArr[0]));
					iv.setMem_id(strArr[1]);
					
					if(0 < interestDao.removeInterestProduct(iv)){
						System.out.println("RESULT : remove success");
					}else{
						System.out.println("RESULT : remove failure");
					}
					
				} else {
					System.out.println("ERR : not found interest");
				}
				
			} catch(Exception e){
				e.printStackTrace();
			}
			
			inputEnter();
			this.show();
			break;
			
		case CHOICE_REMOVE_INTEREST_PRODUCT:

			System.out.println("INPUT : product_no, mem_id");
			
			try{
				strArr = StrSplitTrim(inputUser());
				
				if(interestDao.duplicationInterestProduct(Integer.parseInt(strArr[0]), strArr[1])){

					if(0 < interestDao.removeInterestProduct(Integer.parseInt(strArr[0]), strArr[1])){
						System.out.println("RESULT : remove success");
					}else{
						System.out.println("RESULT : remove failure");
					}
				} else {
					System.out.println("ERR : not found interest");
				}
				
			} catch(Exception e){
				e.printStackTrace();
			}
			
			inputEnter();
			this.show();
			break;
			
		case CHOICE_EXIT:
			System.out.println("exit program");
			System.exit(0);
			
		default : 
			this.show();
		}
	}
}
