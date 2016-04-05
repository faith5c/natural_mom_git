package naturalmom.data.dao;

import java.util.List;


public interface IProductDAO 
{	
	// ��ǰ ������ ������ ��ǰ ����
	ProductVo selectOneProduct(int product_no);
	
	// ��ǰ �߰�
	int insertProduct(ProductVo product);
	
	// ���� ���� ����
	int updateDisplayState(ProductVo product, int state);
	
	// �Ǹ� ���� ����
	int updateSaleState(ProductVo product, int state);
	
	// ����, ����
	int updateDeletedState(ProductVo product, int state);

	// ��ǰ ����
	int updateOneProduct(ProductVo product);

	//////////////////////////////////////////////////////
	
	//��ǰ �� ������
	ProductVo getOneProduct(int product_no);
	
	//��ǰ ��� ������
	List<ProductVo> getAllProduct(int product_no);
	
	//ī�װ��� ���� ��ǰ��� ������
	List<ProductVo> getProductByCategoryCd(int category_cd);
	
}


/*
��ǰ��������

SELECT product_no, product_name, selling_price, sale_state, represent_img, detail_img, summary_ex, detail_ex, weight 
FROM tb_product
WHERE product_no=10000; 

-------------------------------------
��ǰ ��� ������ 

SELECT product_no, product_name, selling_price, sale_state, represent_img, summary_ex 
FROM tb_product
WHERE display_state=1 AND deleted_state=0;


-------------------------------------
-- ������/�ΰ���/���� 

SELECT category_nm FROM tb_category where category_cd=1;


SELECT product_no, product_name, selling_price, sale_state, represent_img, summary_ex 
FROM tb_product
WHERE display_state=1 AND deleted_state=0 AND category_cd=1;
-------------------------------------
-- �Ǻ�ź��/��ȭ

SELECT category_nm FROM tb_category where category_cd=2;


SELECT product_no, product_name, selling_price, sale_state, represent_img, summary_ex 
FROM tb_product
WHERE display_state=1 AND deleted_state=0 AND category_cd=2;
-------------------------------------
-- ����/���帧/Ʈ����

SELECT category_nm FROM tb_category where category_cd=3;


SELECT product_no, product_name, selling_price, sale_state, represent_img, summary_ex 
FROM tb_product
WHERE display_state=1 AND deleted_state=0 AND category_cd=3;
------------------------------------------------------------
-- �̹�/�Ǻ��氳��

SELECT category_nm FROM tb_category where category_cd=4;


SELECT product_no, product_name, selling_price, sale_state, represent_img, summary_ex 
FROM tb_product
WHERE display_state=1 AND deleted_state=0 AND category_cd=4;
*/