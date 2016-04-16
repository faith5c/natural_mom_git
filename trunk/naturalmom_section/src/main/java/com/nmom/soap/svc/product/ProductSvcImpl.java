package com.nmom.soap.svc.product;

import java.util.List;

import com.nmom.soap.S;
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
	public ProductVo getOneProduct(int product_no) 
	{
		return productDao.getOneProduct(product_no);
	}

	// static으로 수정
	@Override
	public int addProduct(ProductVo product) 
	{
		int result = productDao.addProduct(product);

		if (result == 1)
			return S.PROCESS_SUCCESS;
		if (result == 0)
			return S.PROCESS_NO_RESULT;
		else
			return S.PROCESS_ERROR;
	}

	@Override
	public int editDisplayState(int product_no, int state) 
	{
		return productDao.editDisplayState(product_no, state);
	}

	@Override
	public int editSaleState(int product_no, int state) 
	{
		return productDao.editSaleState(product_no, state);
	}

	@Override
	public int editDeletedState(int product_no, int state) 
	{
		return productDao.editDeletedState(product_no, state);
	}

	@Override
	public int editOneProduct(ProductVo product) 
	{
		return productDao.editOneProduct(product);
	}
	
////////////////////////////////////////////////////////////////////////////	

	@Override
	public List<ProductVo> getAllProduct(){
		return productDao.getAllProduct();
	}

	@Override
	public List<ProductVo> getProductByCategoryCd(int category_cd) {
		return productDao.getProductByCategoryCd(category_cd);
	}

	@Override
	public List<ProductVo> getProductByProductName(String product_name) {
		return productDao.getProductByProductName(product_name);
	}

}
