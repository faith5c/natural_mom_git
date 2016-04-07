package naturalmom.data.dao;

import org.springframework.dao.DataAccessException;

import naturalmom.data.model.CartVo;

public interface ICartDao {

	//장바구니 상품중복 확인 (true하나 false중복)
	boolean duplicationCartProductCheck(int product_no, String mem_id) throws DataAccessException;
	
	//장바구니 상품추가
	int addCartProduct(CartVo cart) throws DataAccessException;
	int addCartProduct(int product_no, String mem_id) throws DataAccessException;
	
	//장바구니 상품삭제
	int removeCartProduct(CartVo cart) throws DataAccessException;
	int removeCartProduct(int product_no, String mem_id) throws DataAccessException;
	
	//장바구니 상품당 구매개수 수정
	int editCartBuyNum(CartVo cart) throws DataAccessException;
	int editCartProduct(int product_no, String mem_id, int buy_num) throws DataAccessException;
	
}