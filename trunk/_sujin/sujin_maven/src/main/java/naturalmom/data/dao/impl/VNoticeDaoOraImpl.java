package naturalmom.data.dao.impl;

import java.sql.Types;
import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcDaoSupport;

import naturalmom.data.dao.IVNoticeDao;
import naturalmom.data.model.NoticeVo;
import naturalmom.data.model.VNoticeVo;

public class VNoticeDaoOraImpl extends NamedParameterJdbcDaoSupport implements IVNoticeDao {
	
	final String GET_ALL_NOTICE = 
			"SELECT * FROM v_notice WHERE ROWNUM >= :start AND ROWNUM <= :end";
	
	final String GET_SEARCH_BY_TITLE_NOTICE = 
			"SELECT * FROM v_notice WHERE ntc_title LIKE :search AND ROWNUM >= :start AND ROWNUM <= :end";
	
	final String GET_SEARCH_BY_CONTENT_NOTICE = 
			"SELECT * FROM v_notice WHERE ntc_content LIKE :search AND ROWNUM >= :start AND ROWNUM <= :end";
	
	final String GET_SEARCH_BY_ID_NOTICE = 
			"SELECT * FROM v_notice WHERE mem_id LIKE :search AND ROWNUM >= :start AND ROWNUM <= :end";
	
	final String GET_SEARCH_BY_TITLE_N_CONTENT_NOTICE = 
			"SELECT * FROM v_notice WHERE (ntc_title LIKE :search OR  ntc_content LIKE :search) AND ROWNUM >= :start AND ROWNUM <= :end";
	
	final int LIMIT = 10; 
	
	public List<VNoticeVo> getAllNotice(int start, int end) throws DataAccessException {
		MapSqlParameterSource ps = new MapSqlParameterSource();
		ps.addValue("start", new Integer(start), Types.INTEGER);
		ps.addValue("end", new Integer(end), Types.INTEGER);
		List<VNoticeVo> list = getNamedParameterJdbcTemplate().query(GET_ALL_NOTICE, ps,
				BeanPropertyRowMapper.newInstance(VNoticeVo.class));
		if (list != null)
			return list;
		return null;
	}

	public List<VNoticeVo> getSearchByTitleNotice(String search, int start, int end) throws DataAccessException {
		// TODO Auto-generated method stub
		MapSqlParameterSource ps = new MapSqlParameterSource();
		ps.addValue("search", "%"+search+"%", Types.VARCHAR);
		ps.addValue("start", new Integer(start), Types.INTEGER);
		ps.addValue("end", new Integer(end), Types.INTEGER);
		List<VNoticeVo> list = getNamedParameterJdbcTemplate().query(
				GET_SEARCH_BY_TITLE_NOTICE, 
				ps,
				BeanPropertyRowMapper.newInstance(VNoticeVo.class));
		if (list != null)
			return list;
		return null;
	}

	public List<VNoticeVo> getSearchByContentNotice(String search, int start, int end) throws DataAccessException {
		// TODO Auto-generated method stub
		MapSqlParameterSource ps = new MapSqlParameterSource();
		ps.addValue("search", "%"+search+"%", Types.VARCHAR);
		ps.addValue("start", new Integer(start), Types.INTEGER);
		ps.addValue("end", new Integer(end), Types.INTEGER);
		List<VNoticeVo> list = getJdbcTemplate().query(GET_SEARCH_BY_CONTENT_NOTICE,
				BeanPropertyRowMapper.newInstance(VNoticeVo.class), ps);
		if (list != null)
			return list;
		return null;
	}

	public List<VNoticeVo> getSearchByIdNotice(String search, int start, int end) throws DataAccessException {
		// TODO Auto-generated method stub
		MapSqlParameterSource ps = new MapSqlParameterSource();
		ps.addValue("search", "%"+search+"%", Types.VARCHAR);
		ps.addValue("start", new Integer(start), Types.INTEGER);
		ps.addValue("end", new Integer(end), Types.INTEGER);
		List<VNoticeVo> list = getNamedParameterJdbcTemplate().query(
				GET_SEARCH_BY_ID_NOTICE,
				ps,
				BeanPropertyRowMapper.newInstance(VNoticeVo.class));
		if (list != null)
			return list;
		return null;
	}


	public List<VNoticeVo> getSearchByTitleNContentNotice(String search, int start, int end) throws DataAccessException {
		// TODO Auto-generated method stub
		MapSqlParameterSource ps = new MapSqlParameterSource();
		ps.addValue("search", "%"+search+"%", Types.VARCHAR);
		ps.addValue("start", new Integer(start), Types.INTEGER);
		ps.addValue("end", new Integer(end), Types.INTEGER);
		List<VNoticeVo> list = getNamedParameterJdbcTemplate().query(
				GET_SEARCH_BY_TITLE_N_CONTENT_NOTICE,
				ps,
				BeanPropertyRowMapper.newInstance(VNoticeVo.class));
		if (list != null)
			return list;
		return null;
	}

	

}