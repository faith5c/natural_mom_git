package naturalmom.ui.svc;

import naturalmom.data.dao.IProductDao;

public class ProductConSvc extends ConSvc{
	IProductDao productDao;

	public void setProductDao(IProductDao productDao) {
		this.productDao = productDao;
	}

	public void show() {
		// TODO Auto-generated method stub
		
	}
}