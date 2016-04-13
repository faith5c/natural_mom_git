package com.nmom.soap.svc.category;

import com.nmom.soap.data.dao.category.ICategoryDao;

public class CategorySvcImpl implements ICategorySvc {
	ICategoryDao categoryDao;
	
	public void setCategoryDao(ICategoryDao categoryDao) {
		this.categoryDao = categoryDao;
	}

	@Override
	public String getCategoryNameByCd(int category_cd) {
		return null;
	}

}
