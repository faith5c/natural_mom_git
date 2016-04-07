package naturalmom.data.dao.impl;

import java.sql.Types;
import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcDaoSupport;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;

import naturalmom.data.dao.IFaqDao;
import naturalmom.data.model.FaqVo;

public class FaqDaoOraImpl extends NamedParameterJdbcDaoSupport implements IFaqDao {
	private final String SQL_SELECT_ALL_FAQ_LIST = "SELECT faq_no, faq_title FROM tb_faq WHERE board_id=3 AND faq_del_check=0 ORDER BY faq_no ASC";
	
	private final String SQL_SEARCH_FAQ_TITLE = "SELECT faq_no, faq_title FROM tb_faq WHERE board_id=3 AND faq_del_check=0 AND faq_title LIKE :keyword ORDER BY faq_no ASC";
	private final String SQL_SEARCH_FAQ_CONTENT = "SELECT faq_no, faq_title FROM tb_faq WHERE board_id=3 AND faq_del_check=0 AND faq_content LIKE :keyword ORDER BY faq_no ASC";
	private final String SQL_SEARCH_FAQ_TITLE_N_CONTENT = "SELECT faq_no, faq_title FROM tb_faq WHERE board_id=3 AND faq_del_check=0 AND (faq_title LIKE :keyword OR faq_content LIKE :keyword) ORDER BY faq_no ASC";
	
	private final String SQL_SELECT_ONE_FAQ = "SELECT faq_no, faq_title, faq_content FROM tb_faq WHERE board_id=3 AND faq_del_check=0 AND faq_no=:faq_no";
	private final String SQL_INSERT_FAQ = "INSERT INTO tb_faq (faq_title, faq_content, faq_del_check, board_id, mem_id, faq_no) VALUES (:faq_title, :faq_content, 0, 3, :mem_id, FAQ_NO_SEQ.NEXTVAL)";
	private final String SQL_UPDATE_FAQ = "UPDATE tb_faq SET faq_title=:faq_title, faq_content=:faq_content WHERE faq_no=:faq_no";
	private final String SQL_DELETE_FAQ = "UPDATE tb_faq SET faq_del_check=1 WHERE faq_no=:faq_no";

	@Override
	public FaqVo getOneFaq(int faq_no) throws DataAccessException {
		NamedParameterJdbcTemplate npjtem = this.getNamedParameterJdbcTemplate();
		MapSqlParameterSource ps = new MapSqlParameterSource();
		ps.addValue("faq_no", faq_no, Types.INTEGER);

		List<FaqVo> faq_list = npjtem.query(SQL_SELECT_ONE_FAQ, ps, new BeanPropertyRowMapper<FaqVo>(FaqVo.class));
		
		if(faq_list!=null && faq_list.size()==1){
			return faq_list.get(0);
		} else {
			return null;
		}
	}
	
	@Override
	public List<FaqVo> getAllFaq() throws DataAccessException {
		return this.getJdbcTemplate().query(SQL_SELECT_ALL_FAQ_LIST, new BeanPropertyRowMapper<FaqVo>(FaqVo.class));
	}

	@Override
	public List<FaqVo> searchFaqTitle(String keyword) throws DataAccessException {
		NamedParameterJdbcTemplate npjtem = this.getNamedParameterJdbcTemplate();
		keyword = "%"+keyword+"%";
		MapSqlParameterSource ps = new MapSqlParameterSource();
		ps.addValue("keyword", keyword, Types.VARCHAR);

		return npjtem.query(SQL_SEARCH_FAQ_TITLE, ps, new BeanPropertyRowMapper<FaqVo>(FaqVo.class));
	}

	@Override
	public List<FaqVo> searchFaqContent(String keyword) throws DataAccessException {
		NamedParameterJdbcTemplate npjtem = this.getNamedParameterJdbcTemplate();
		keyword = "%"+keyword+"%";
		MapSqlParameterSource ps = new MapSqlParameterSource();
		ps.addValue("keyword", keyword, Types.VARCHAR);

		return npjtem.query(SQL_SEARCH_FAQ_CONTENT, ps, new BeanPropertyRowMapper<FaqVo>(FaqVo.class));
	}

	@Override
	public List<FaqVo> searchFaqTitleNContent(String keyword) throws DataAccessException {
		NamedParameterJdbcTemplate npjtem = this.getNamedParameterJdbcTemplate();
		keyword = "%"+keyword+"%";
		MapSqlParameterSource ps = new MapSqlParameterSource();
		ps.addValue("keyword", keyword, Types.VARCHAR);

		return npjtem.query(SQL_SEARCH_FAQ_TITLE_N_CONTENT, ps, new BeanPropertyRowMapper<FaqVo>(FaqVo.class));
	}

	@Override
	public int addFaq(FaqVo faq) {
		NamedParameterJdbcTemplate npjtem = this.getNamedParameterJdbcTemplate();
		MapSqlParameterSource ps = new MapSqlParameterSource();
		ps.addValue("faq_title", faq.getFaq_title(), Types.VARCHAR);
		ps.addValue("faq_content", faq.getFaq_content(), Types.VARCHAR);
		ps.addValue("mem_id", faq.getMem_id(), Types.VARCHAR);
		
		return npjtem.update(SQL_INSERT_FAQ, ps);
		
	}

	@Override
	public int addFaq(String faq_title, String faq_content, String mem_id) throws DataAccessException {
		NamedParameterJdbcTemplate npjtem = this.getNamedParameterJdbcTemplate();
		MapSqlParameterSource ps = new MapSqlParameterSource();
		ps.addValue("faq_title", faq_title, Types.VARCHAR);
		ps.addValue("faq_content", faq_content, Types.VARCHAR);
		ps.addValue("mem_id", mem_id, Types.VARCHAR);
		
		return npjtem.update(SQL_INSERT_FAQ, ps);
	}

	@Override
	public int editFaq(FaqVo faq) {
		NamedParameterJdbcTemplate npjtem = this.getNamedParameterJdbcTemplate();
		MapSqlParameterSource ps = new MapSqlParameterSource();
		ps.addValue("faq_title", faq.getFaq_title(), Types.VARCHAR);
		ps.addValue("faq_content", faq.getFaq_content(), Types.VARCHAR);
		ps.addValue("faq_no", faq.getFaq_no(), Types.INTEGER);
		
		return npjtem.update(SQL_UPDATE_FAQ, ps);
	}

	@Override
	public int editFaq(String faq_title, String faq_content, int faq_no) throws DataAccessException {
		NamedParameterJdbcTemplate npjtem = this.getNamedParameterJdbcTemplate();
		MapSqlParameterSource ps = new MapSqlParameterSource();
		ps.addValue("faq_title", faq_title, Types.VARCHAR);
		ps.addValue("faq_content", faq_content, Types.VARCHAR);
		ps.addValue("faq_no", faq_no, Types.INTEGER);
		
		return npjtem.update(SQL_UPDATE_FAQ, ps);
	}

	@Override
	public int removeFaq(FaqVo faq) throws DataAccessException {
		NamedParameterJdbcTemplate npjtem = this.getNamedParameterJdbcTemplate();
		MapSqlParameterSource ps = new MapSqlParameterSource();
		ps.addValue("faq_no", faq.getFaq_no(), Types.INTEGER);
		
		return npjtem.update(SQL_DELETE_FAQ, ps);
	}

	@Override
	public int removeFaq(int faq_no) throws DataAccessException {
		NamedParameterJdbcTemplate npjtem = this.getNamedParameterJdbcTemplate();
		MapSqlParameterSource ps = new MapSqlParameterSource();
		ps.addValue("faq_no", faq_no, Types.INTEGER);
		
		return npjtem.update(SQL_DELETE_FAQ, ps);
	}

}