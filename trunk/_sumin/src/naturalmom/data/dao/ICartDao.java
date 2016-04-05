package naturalmom.data.dao;

public interface ICartDao {

	//장바구니 상품중복 확인
	boolean duplicationCheckForCart(int product_no, String mem_id);
	
	//장바구니 상품추가
	int addProductToCart();
	
	//장바구니 상품삭제
	int removeProductOfCart();
	
	//장바구니 상품당 구매개수 수정
	int editProductNumOfCart();
}
