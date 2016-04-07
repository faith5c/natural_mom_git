package naturalmom.data.dao;

import java.util.Calendar;

import org.springframework.dao.DataAccessException;

import naturalmom.data.model.SaleStatementVo;

public interface IVSaleStatementDao {
	
	public SaleStatementVo getSaleStatement()  throws DataAccessException;
	
	public SaleStatementVo getSaleStatement(Calendar today)  throws DataAccessException;
	
	public SaleStatementVo getSaleStatement(Calendar start, Calendar end)  throws DataAccessException;
}
