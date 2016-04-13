package com.nmom.soap.svc.product;

import java.util.List;

import com.nmom.soap.data.dao.product.IProductDao;
import com.nmom.soap.data.model.product.ProductVo;

public class ProductSvcImpl implements IProductSvc
{
	IProductDao productDao;
	
	public void setProductDao(IProductDao productDao) 
	{
		this.productDao = productDao;
	}

	@Override
	public ProductVo getOneProduct(int produt_no) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int addProduct(ProductVo product) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int editDisplayState(ProductVo product, int state) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int editSaleState(ProductVo product, int state) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int editDeletedState(ProductVo product, int state) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int editOneProduct(ProductVo product) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<ProductVo> getAllProduct(){
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ProductVo> getProductByCategoryCd(int category_cd) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ProductVo> getProductByProductName(String product_name) {
		// TODO Auto-generated method stub
		return null;
	}

}
