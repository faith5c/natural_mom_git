package naturalmom.ui.svc;

import naturalmom.data.dao.ICategoryDao;

public class CategoryConSvc extends ConSvc{
	private final int CHOICE_GET_CATEGORYNAME_BY_CD = 1;
	private final int CHOICE_EXIT= 2;

	private final int MIN_NUM = CHOICE_GET_CATEGORYNAME_BY_CD;
	private final int MAX_NUM = CHOICE_EXIT;
	
	ICategoryDao categoryDao;

	public void setCategoryDao(ICategoryDao categoryDao) {
		this.categoryDao = categoryDao;
	}

	public void showMenu(){
		System.out.println(line1);
		System.out.println("choice CATEGORY menu");
		System.out.println(line2);
		System.out.println("1. get CategoryName By Cd");
		System.out.println("2. Exit\n");
	}
	
	public void show() {
		String str = null;
		showMenu();
		int num = checkNumberMinMax(MIN_NUM, MAX_NUM, inputUser());
		
		switch(num){
		case CHOICE_GET_CATEGORYNAME_BY_CD:
			try{
				System.out.println("INPUT : category_cd (1~4)");
				str = inputUser();
				String result = categoryDao.getCategoryNameByCd(Integer.parseInt(str));
				System.out.println(result);
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