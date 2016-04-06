package naturalmom.data.dao.impl;

import java.sql.Types;
import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcDaoSupport;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;

import naturalmom.data.dao.IInterestDao;
import naturalmom.data.model.InterestVo;

public class InterestDaoOraImpl extends NamedParameterJdbcDaoSupport implements IInterestDao{

	private final String SQL_DUPLICATION_INTEREST_CHECK = "SELECT COUNT(product_no) FROM tb_interest WHERE product_no=:product_no AND mem_id=:mem_id";
	private final String SQL_INSERT_INTEREST = "INSERT INTO tb_interest (product_no, mem_id) VALUES (:product_no, :mem_id)";
	private final String SQL_DELETE_INTEREST = "DELETE FROM tb_interest WHERE product_no=:product_no AND mem_id=:mem_id";

	@Override
	public boolean duplicationInterestProductCheck(int product_no, String mem_id) throws DataAccessException {
		NamedParameterJdbcTemplate npjtem = this.getNamedParameterJdbcTemplate();
		
		MapSqlParameterSource ps = new MapSqlParameterSource();
		ps.addValue("product_no", product_no, Types.INTEGER);
		ps.addValue("mem_id", mem_id, Types.VARCHAR);
		
		int r = npjtem.queryForInt(SQL_DUPLICATION_INTEREST_CHECK, ps);
		
		if(r == 0) return true;
		else return false;
	}

	@Override
	public int addInterestProduct(InterestVo interest) throws DataAccessException {
		NamedParameterJdbcTemplate npjtem = this.getNamedParameterJdbcTemplate();
		
		MapSqlParameterSource ps = new MapSqlParameterSource();
		ps.addValue("product_no", interest.getProduct_no(), Types.INTEGER);
		ps.addValue("mem_id", interest.getMem_id(), Types.VARCHAR);
		
		return npjtem.update(SQL_INSERT_INTEREST, ps);
	}

	@Override
	public int addInterestProduct(int product_no, String mem_id) throws DataAccessException {
		NamedParameterJdbcTemplate npjtem = this.getNamedParameterJdbcTemplate();
		
		MapSqlParameterSource ps = new MapSqlParameterSource();
		ps.addValue("product_no", product_no, Types.INTEGER);
		ps.addValue("mem_id", mem_id, Types.VARCHAR);
		
		return npjtem.update(SQL_INSERT_INTEREST, ps);
	}

	@Override
	public int removeInterestProduct(InterestVo interest) throws DataAccessException {
		NamedParameterJdbcTemplate npjtem = this.getNamedParameterJdbcTemplate();
		
		MapSqlParameterSource ps = new MapSqlParameterSource();
		ps.addValue("product_no", interest.getProduct_no(), Types.INTEGER);
		ps.addValue("mem_id", interest.getMem_id(), Types.VARCHAR);
		
		return npjtem.update(SQL_DELETE_INTEREST, ps);
	}

	@Override
	public int removeInterestProduct(int product_no, String mem_id) throws DataAccessException {
		NamedParameterJdbcTemplate npjtem = this.getNamedParameterJdbcTemplate();
		
		MapSqlParameterSource ps = new MapSqlParameterSource();
		ps.addValue("product_no", product_no, Types.INTEGER);
		ps.addValue("mem_id", mem_id, Types.VARCHAR);
		
		return npjtem.update(SQL_DELETE_INTEREST, ps);
	}
}