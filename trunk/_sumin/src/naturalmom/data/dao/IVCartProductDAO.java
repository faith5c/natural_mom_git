package naturalmom.data.dao;

import java.util.List;
import nm.data.model.VCartProductVo;

interface IVCartProductDAO {
	
	//전체 장바구니 조회
	List<VCartProductVo> getAllCart();
	
	//회원아이디에 해당하는 장바구니 조회
	List<VCartProductVo> getCartByMemId(String mem_id);
}

/*
-- 회원아이디에 해당하는 장바구니 뷰에 적용되어야 할 SQL
SELECT product_no, product_name, selling_price, sale_state, represent_img, buy_num 
FROM V_CART_PRODUCT
WHERE mem_id='soomin';
*/