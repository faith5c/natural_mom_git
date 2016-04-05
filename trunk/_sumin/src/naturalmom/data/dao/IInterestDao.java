package naturalmom.data.dao;

import org.springframework.dao.DataAccessException;

import naturalmom.data.model.InterestVo;

public interface IInterestDao {

	//관심상품 상품중복 확인 (true하나 false중복)
	boolean duplicationInterestProductCheck(int product_no, String mem_id) throws DataAccessException;
	
	//관심상품 상품추가
	int addInterestProduct(InterestVo interest) throws DataAccessException;
	int addInterestProduct(int product_no, String mem_id) throws DataAccessException;
	
	//관심상품 상품삭제
	int removeInterestProduct(InterestVo interest) throws DataAccessException;
	int removeInterestProduct(int product_no, String mem_id) throws DataAccessException;
}
