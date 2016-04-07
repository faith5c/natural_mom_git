package naturalmom.ui.svc;

import naturalmom.data.dao.ICartDao;
import naturalmom.data.dao.ICategoryDao;
import naturalmom.data.dao.IFaqDao;
import naturalmom.data.dao.IInterestDao;
import naturalmom.data.dao.IProductDao;
import naturalmom.data.dao.IQnaDao;
import naturalmom.data.dao.IQnaReDao;
import naturalmom.data.dao.IVCartProductDao;
import naturalmom.data.dao.IVInterestProductDao;
import naturalmom.data.dao.IVQnaQnareDao;

public class MainUISvc implements IMainUI{
	
	private ICartDao cartDao;
	private ICategoryDao categoryDao;
	private IFaqDao faqDao;
	private IInterestDao interesetDao;
	private IProductDao productDao;
	private IQnaDao qnaDao;
	private IQnaReDao qnaReDao;
	private IVCartProductDao vCartProductDao;
	private IVInterestProductDao vInterestProductDao;
	private IVQnaQnareDao vQnaQnareDao;
	
	//설정자 의존관계 주입
	public void setCartDao(ICartDao cartDao) {
		this.cartDao = cartDao;
	}
	public void setCategoryDao(ICategoryDao categoryDao) {
		this.categoryDao = categoryDao;
	}
	public void setFaqDao(IFaqDao faqDao) {
		this.faqDao = faqDao;
	}
	public void setInteresetDao(IInterestDao interesetDao) {
		this.interesetDao = interesetDao;
	}
	public void setProductDao(IProductDao productDao) {
		this.productDao = productDao;
	}
	public void setQnaDao(IQnaDao qnaDao) {
		this.qnaDao = qnaDao;
	}
	public void setQnaReDao(IQnaReDao qnaReDao) {
		this.qnaReDao = qnaReDao;
	}
	public void setVcartProductDao(IVCartProductDao vCartProductDao) {
		this.vCartProductDao = vCartProductDao;
	}
	public void setVinterestProductDao(IVInterestProductDao vInterestProductDao) {
		this.vInterestProductDao = vInterestProductDao;
	}
	public void setVqnaQnareDao(IVQnaQnareDao vQnaQnareDao) {
		this.vQnaQnareDao = vQnaQnareDao;
	}
	
	//실행부분
	public void showMenu() {
		System.out.println(productDao.getAllProduct().get(0));
		System.out.println(faqDao.getAllFaq(0, 10).get(0));
	}
}
