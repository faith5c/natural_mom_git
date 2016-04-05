



package naturalmom.data.dao;

import java.util.List;
import nm.data.model.VInterestProductVo;

interface IVInterestProductDAO {

	//전체 관심상품 조회
	List<VInterestProductVo> getAllInterest();
	
	//회원아이디에 해당하는 관심상품 조회
	List<VInterestProductVo> getInterestByMemId(String mem_id);
	
}

/*
회원아이디에 해당하는 관심상품 조회하는 SQL문
SELECT product_no, product_name, selling_price, sale_state, represent_img 
FROM V_INTEREST_PRODUCT
WHERE mem_id='soomin';
*/

