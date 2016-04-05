package naturalmom.data.dao;

import java.util.List;
import nm.data.model.VInterestProductVo;

interface IVInterestProductDAO {

	//��ü ���ɻ�ǰ ��ȸ
	List<VInterestProductVo> getAllInterest();
	
	//ȸ�����̵� �ش��ϴ� ���ɻ�ǰ ��ȸ
	List<VInterestProductVo> getInterestByMemId(String mem_id);
	
}

/*
ȸ�����̵� �ش��ϴ� ���ɻ�ǰ ��ȸ�ϴ� SQL��
SELECT product_no, product_name, selling_price, sale_state, represent_img 
FROM V_INTEREST_PRODUCT
WHERE mem_id='soomin';
*/