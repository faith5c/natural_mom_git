package nm.data.dao;

public interface ICategoryDAO {
	String getCategoryName(int category_cd);
}
/*
SELECT category_nm FROM tb_category where category_cd=1;
*/
