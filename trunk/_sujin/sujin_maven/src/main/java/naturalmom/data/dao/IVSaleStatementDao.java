package naturalmom.data.dao;

import java.util.Calendar;

import org.springframework.dao.DataAccessException;

import naturalmom.data.model.SaleStatementVo;

public interface IVSaleStatementDao {
	
	public SaleStatementVo getSaleStatement()  throws DataAccessException;
	
	public SaleStatementVo getSaleStatement(String today)  throws DataAccessException;
	
	public SaleStatementVo getSaleStatement(String start, String end)  throws DataAccessException;
}
