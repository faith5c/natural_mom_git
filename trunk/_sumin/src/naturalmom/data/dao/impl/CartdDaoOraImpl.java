package naturalmom.data.dao.impl;

import org.springframework.dao.DataAccessException;

import naturalmom.data.dao.ICartDao;
import naturalmom.data.model.CartVo;

public class CartdDaoOraImpl implements ICartDao{

//	private final String SQL_SELECT_CART = "SELECT product_no, mem_id, buy_num FROM tb_cart WHERE product_no=? and mem_id=?";
//	private final String SQL_INSERT_CART = "INSERT INTO tb_cart (product_no, mem_id, buy_num) values (?, ?, ?)"; 
//	private final String SQL_DELETE_CART = "DELETE FROM tb_cart WHERE product_no=? AND mem_id=?";
//	private final String SQL_UPDATE_CART = "UPDATE tb_cart SET buy_num=? WHERE product_no=? AND mem_id=?";
	
	private final String SQL_SELECT_CART = "SELECT product_no, mem_id, buy_num FROM tb_cart WHERE product_no=:product_no and mem_id=:mem_id";
	private final String SQL_INSERT_CART = "INSERT INTO tb_cart (product_no, mem_id, buy_num) values (:product_no, :mem_id, :buy_num)"; 
	private final String SQL_DELETE_CART = "DELETE FROM tb_cart WHERE product_no=:product_no AND mem_id=:mem_id";
	private final String SQL_UPDATE_CART = "UPDATE tb_cart SET buy_num=:buy_num WHERE product_no=:product_no AND mem_id=:mem_id";
	
	@Override
	public boolean duplicationCartProductCheck(int product_no, String mem_id) throws DataAccessException {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public int addCartProduct(CartVo cart) throws DataAccessException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int addCartProduct(int product_no, String mem_id) throws DataAccessException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int removeCartProduct(CartVo cart) throws DataAccessException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int removeCartProduct(int product_no, String mem_id) throws DataAccessException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int editCartBuyNum(CartVo cart) throws DataAccessException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int removeCartProduct(int product_no, String mem_id, int buy_num) throws DataAccessException {
		// TODO Auto-generated method stub
		return 0;
	}

}
