package naturalmom.data.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Calendar;
import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;

import fusion.data.model.NoticeVO;
import naturalmom.data.dao.INoticeDAO;

public class NoticeDAOImpl extends JdbcDaoSupport implements INoticeDAO {
	
	RowMapperImpl rowMap;
	
	@Override
	public List<NoticeVO> getAllNotice() throws DataAccessException {
		String sql = "SELECT notice_no, ntc_title, ntc_write_day, ntc_hits, mem_id FROM tb_notice "
				+ "WHERE ntc_del_check = 0 ORDER BY notice_no DESC";
		JdbcTemplate jtem = getJdbcTemplate();
		return jtem.query(sql, rowMap);
	}

	@Override
	public List<NoticeVO> getSearchNotice(String search, int n) throws DataAccessException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public NoticeVO readNotice(int notice_no) throws DataAccessException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean writeNotice(NoticeVO notice) throws DataAccessException {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean updateNotice(String title, String content, int notice_id) throws DataAccessException {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deletNotice(int notice_no) throws DataAccessException {
		// TODO Auto-generated method stub
		return false;
	}

	public class RowMapperImpl implements RowMapper<NoticeVO>{
		Calendar cal = Calendar.getInstance();
		@Override
		public NoticeVO mapRow(ResultSet rs, int num) throws SQLException {
			cal.setTime(rs.getDate("ntc_write_day"));
			return new NoticeVO(rs.getInt("notice_no") , 
					rs.getString("ntc_title"), 
					cal, 
					rs.getInt("ntc_hits"), 
					rs.getString("ntc_content"), 
					rs.getInt("ntc_del_check"), 
					rs.getString("ntc_attached_file1"), 
					rs.getString("ntc_attached_file2"), 
					rs.getInt("board_id"), 
					rs.getString("mem_id") );
		}}
}
