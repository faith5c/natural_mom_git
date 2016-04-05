package naturalmom.data.dao;

import org.springframework.dao.DataAccessException;

public interface ICategoryDao {
	
	//카테고리코드로 카테고리이름가져옴
	String getCategoryNameByCd(int category_cd) throws DataAccessException;
}