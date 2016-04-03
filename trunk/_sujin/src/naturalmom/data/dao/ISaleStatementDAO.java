package naturalmom.data.dao;

import java.util.Calendar;

import org.springframework.dao.DataAccessException;

import fusion.data.model.SaleStatementVO;

public interface ISaleStatementDAO {
	
	public SaleStatementVO getSaleStatement()  throws DataAccessException;
	
	public SaleStatementVO getSaleStatement(Calendar Calendar)  throws DataAccessException;
	
	public SaleStatementVO getSaleStatement(Calendar start, Calendar end)  throws DataAccessException;
}
