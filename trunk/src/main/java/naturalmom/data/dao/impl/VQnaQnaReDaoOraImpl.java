package naturalmom.data.dao.impl;

import java.sql.Types;
import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcDaoSupport;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;

import naturalmom.data.dao.IVQnaQnaReDao;
import naturalmom.data.model.VQnaQnaReVo;

public class VQnaQnaReDaoOraImpl extends NamedParameterJdbcDaoSupport implements IVQnaQnaReDao {

	private final String SQL_SELECT_ONE_QNA = 
			"SELECT qna_no, qna_title, qna_write_day, qna_hits, qna_content, qna_pw, qna_pos, qna_ref, mem_id, qna_re_count FROM v_qna_qnare WHERE qna_no=:qna_no";
	
	private final String SQL_SELECT_ALL_QNA_LIST = 
			"SELECT qna_no, qna_title, qna_write_day, qna_hits, qna_pw, qna_pos, qna_ref, mem_id, qna_re_count FROM v_qna_qnare "
			+ "WHERE ROWNUM>=:start AND ROWNUM<=:end GROUP BY qna_no, qna_title, qna_write_day, qna_hits, qna_pw, qna_pos, qna_ref, mem_id, qna_re_count ORDER BY qna_ref DESC, qna_pos DESC";
	
	private final String SQL_SEARCH_QNA_TITLE = 
			"SELECT qna_no, qna_title, qna_write_day, qna_hits, qna_pw, qna_pos, qna_ref, mem_id, qna_re_count FROM v_qna_qnare "
			+ "WHERE qna_title AND ROWNUM>=:start AND ROWNUM<=:end LIKE :keyword GROUP BY qna_no, qna_title, qna_write_day, qna_hits, qna_pw, qna_pos, qna_ref, mem_id, qna_re_count ORDER BY qna_ref DESC, qna_pos DESC";

	private final String SQL_SEARCH_QNA_CONTENT = 
			"SELECT qna_no, qna_title, qna_write_day, qna_hits, qna_pw, qna_pos, qna_ref, mem_id, qna_re_count FROM v_qna_qnare "
			+ "WHERE qna_content AND ROWNUM>=:start AND ROWNUM<=:end LIKE :keyword GROUP BY qna_no, qna_title, qna_write_day, qna_hits, qna_pw, qna_pos, qna_ref, mem_id, qna_re_count ORDER BY qna_ref DESC, qna_pos DESC";

	private final String SQL_SEARCH_QNA_TITLE_N_CONTENT = 
			"SELECT qna_no, qna_title, qna_write_day, qna_hits, qna_pw, qna_pos, qna_ref, mem_id, qna_re_count FROM v_qna_qnare "
			+ "WHERE (qna_title LIKE :keyword OR qna_content LIKE :keyword) AND ROWNUM>=:start AND ROWNUM<=:end GROUP BY qna_no, qna_title, qna_write_day, qna_hits, qna_pw, qna_pos, qna_ref, mem_id, qna_re_count ORDER BY qna_ref DESC, qna_pos DESC";
	
	public VQnaQnaReVo getOneQna(int qna_no) throws DataAccessException {
		NamedParameterJdbcTemplate npjtem = this.getNamedParameterJdbcTemplate();
		MapSqlParameterSource ps = new MapSqlParameterSource();
		ps.addValue("qna_no", qna_no, Types.INTEGER);

		List<VQnaQnaReVo> qna_list = npjtem.query(SQL_SELECT_ONE_QNA, ps, new BeanPropertyRowMapper<VQnaQnaReVo>(VQnaQnaReVo.class));
		
		if(qna_list!=null && qna_list.size()==1){
			return qna_list.get(0);
		} else {
			return null;
		}
	}

	public List<VQnaQnaReVo> getAllQna(int start, int end) throws DataAccessException {
		NamedParameterJdbcTemplate npjtem = this.getNamedParameterJdbcTemplate();
		MapSqlParameterSource ps = new MapSqlParameterSource();
		ps.addValue("start", start, Types.INTEGER);
		ps.addValue("end", end, Types.INTEGER);

		return npjtem.query(SQL_SELECT_ALL_QNA_LIST, ps, new BeanPropertyRowMapper<VQnaQnaReVo>(VQnaQnaReVo.class));
	}

	public List<VQnaQnaReVo> searchQnaTitle(String keyword, int start, int end) throws DataAccessException {
		NamedParameterJdbcTemplate npjtem = this.getNamedParameterJdbcTemplate();
		keyword = "%"+keyword+"%";
		MapSqlParameterSource ps = new MapSqlParameterSource();
		ps.addValue("keyword", keyword, Types.VARCHAR);
		ps.addValue("start", start, Types.INTEGER);
		ps.addValue("end", end, Types.INTEGER);

		return npjtem.query(SQL_SEARCH_QNA_TITLE, ps, new BeanPropertyRowMapper<VQnaQnaReVo>(VQnaQnaReVo.class));
	}

	public List<VQnaQnaReVo> searchQnaContent(String keyword, int start, int end) throws DataAccessException {
		NamedParameterJdbcTemplate npjtem = this.getNamedParameterJdbcTemplate();
		keyword = "%"+keyword+"%";
		MapSqlParameterSource ps = new MapSqlParameterSource();
		ps.addValue("keyword", keyword, Types.VARCHAR);
		ps.addValue("start", start, Types.INTEGER);
		ps.addValue("end", end, Types.INTEGER);
		
		return npjtem.query(SQL_SEARCH_QNA_CONTENT, ps, new BeanPropertyRowMapper<VQnaQnaReVo>(VQnaQnaReVo.class));
	}

	public List<VQnaQnaReVo> searchQnaTitleNContent(String keyword, int start, int end) throws DataAccessException {
		NamedParameterJdbcTemplate npjtem = this.getNamedParameterJdbcTemplate();
		keyword = "%"+keyword+"%";
		MapSqlParameterSource ps = new MapSqlParameterSource();
		ps.addValue("keyword", keyword, Types.VARCHAR);
		ps.addValue("start", start, Types.INTEGER);
		ps.addValue("end", end, Types.INTEGER);
		
		return npjtem.query(SQL_SEARCH_QNA_TITLE_N_CONTENT, ps, new BeanPropertyRowMapper<VQnaQnaReVo>(VQnaQnaReVo.class));
	}
}