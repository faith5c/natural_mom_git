package nm.data.dao;

import java.util.List;
import nm.data.model.VCartProductVO;

interface IVCartProductDAO {
	
	//��ü ��ٱ��� ��ȸ
	List<VCartProductVO> getAllCart();
	
	//ȸ�����̵� �ش��ϴ� ��ٱ��� ��ȸ
	List<VCartProductVO> getCartByMemId(String mem_id);
}

/*
-- ȸ�����̵� �ش��ϴ� ��ٱ��� �信 ����Ǿ�� �� SQL
SELECT product_no, product_name, selling_price, sale_state, represent_img, buy_num 
FROM V_CART_PRODUCT
WHERE mem_id='soomin';
*/