package com.nmom.soap.data.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcDaoSupport;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;

import com.nmom.soap.data.dao.IBoardAccessDao;
import com.nmom.soap.data.model.BoardAccessVo;

public class BoardAccessDaoOraImpl extends NamedParameterJdbcDaoSupport implements IBoardAccessDao {
	
	NamedParameterJdbcTemplate nameTemplate;
	JdbcTemplate jtem;
	
	private final String SQL_ACCESS_SELECT_BY_ID 
		="SELECT * FROM tb_mem_level_n_board WHERE board_cd=? AND mem_level_cd=(SELECT mem_level_cd FROM tb_member WHERE mem_id=?)";
	
	private final String SQL_ACCESS_SELECT_ADMIN ="SELECT * FROM tb_mem_level_n_board WHERE board_cd=? AND mem_level_cd=10";
	private final String SQL_ACCESS_SELECT_MEMBER ="SELECT * FROM tb_mem_level_n_board WHERE board_cd=? AND mem_level_cd=1";
	private final String SQL_ACCESS_SELECT_BLACKLIST ="SELECT * FROM tb_mem_level_n_board WHERE board_cd=? AND mem_level_cd=2";
	private final String SQL_ACCESS_SELECT_NONMEMBER ="SELECT * FROM tb_mem_level_n_board WHERE board_cd=? AND mem_level_cd=3";
	
	private final String SQL_ACCESS_SELECT_NOTICE ="SELECT * FROM tb_mem_level_n_board WHERE board_cd=? AND mem_level_cd=?";
	private final String SQL_ACCESS_SELECT_EVENT ="SELECT * FROM tb_mem_level_n_board WHERE board_cd=? AND mem_level_cd=?";
	private final String SQL_ACCESS_SELECT_QNA ="SELECT * FROM tb_mem_level_n_board WHERE board_cd=? AND mem_level_cd=?";
	private final String SQL_ACCESS_SELECT_FAQ ="SELECT * FROM tb_mem_level_n_board WHERE board_cd=? AND mem_level_cd=?";
	private final String SQL_ACCESS_SELECT_REVIEW ="SELECT * FROM tb_mem_level_n_board WHERE board_cd=? AND mem_level_cd=?";
	
	
	// 아이디에 따른 권한
	@Override
	public BoardAccessVo getAccess(int board_no, String mem_id) {
		jtem = getJdbcTemplate();
		List<BoardAccessVo> board =	jtem.query(SQL_ACCESS_SELECT_BY_ID,  
									new RowMapper<BoardAccessVo>() {
			@Override
			public BoardAccessVo mapRow(ResultSet rs, int arg1) throws SQLException {
				BoardAccessVo access = new BoardAccessVo();
				access.setBoard_cd(rs.getInt("board_no"));
				access.setBoard_read(rs.getInt("board_read"));
				access.setBoard_write(rs.getInt("board_write"));
				access.setBoard_modify(rs.getInt("board_modify"));
				access.setBoard_delete(rs.getInt("board_delete"));
				access.setMem_level_cd(rs.getInt("mem_level_cd"));
				return access;
			}
		}, new Object[]{new Integer(board_no), mem_id});
		return board.get(0);
	}

	
	// 등급에 따른 게시판 권한
	@Override
	public BoardAccessVo getAdminAccess(int board_no) {
		jtem = getJdbcTemplate();
		List<BoardAccessVo> board = jtem.query(SQL_ACCESS_SELECT_ADMIN,  
									new RowMapper<BoardAccessVo>() {
			@Override
			public BoardAccessVo mapRow(ResultSet rs, int arg1) throws SQLException {
				BoardAccessVo access = new BoardAccessVo();
				access.setBoard_cd(rs.getInt("board_no"));
				access.setBoard_read(rs.getInt("board_read"));
				access.setBoard_write(rs.getInt("board_write"));
				access.setBoard_modify(rs.getInt("board_modify"));
				access.setBoard_delete(rs.getInt("board_delete"));
				access.setMem_level_cd(rs.getInt("mem_level_cd"));
				return access;
			}
		}, new Integer(board_no));
		return board.get(0);
	}

	@Override
	public BoardAccessVo getMemberAccess(int board_no) {
		jtem = getJdbcTemplate();
		List<BoardAccessVo> board = jtem.query(SQL_ACCESS_SELECT_MEMBER, 
									new Object[]{new Integer(board_no)}, 
									new RowMapper<BoardAccessVo>() {
			@Override
			public BoardAccessVo mapRow(ResultSet rs, int arg1) throws SQLException {
				BoardAccessVo access = new BoardAccessVo();
				access.setBoard_cd(rs.getInt("board_no"));
				access.setBoard_read(rs.getInt("board_read"));
				access.setBoard_write(rs.getInt("board_write"));
				access.setBoard_modify(rs.getInt("board_modify"));
				access.setBoard_delete(rs.getInt("board_delete"));
				access.setMem_level_cd(rs.getInt("mem_level_cd"));
				return access;
			}
		});
		return board.get(0);
	}

	@Override
	public BoardAccessVo getBlacklistAccess(int board_no) {
		jtem = getJdbcTemplate();
		List<BoardAccessVo> board = jtem.query(SQL_ACCESS_SELECT_BLACKLIST, 
									new Object[]{new Integer(board_no)}, 
									new RowMapper<BoardAccessVo>() {
			@Override
			public BoardAccessVo mapRow(ResultSet rs, int arg1) throws SQLException {
				BoardAccessVo access = new BoardAccessVo();
				access.setBoard_cd(rs.getInt("board_no"));
				access.setBoard_read(rs.getInt("board_read"));
				access.setBoard_write(rs.getInt("board_write"));
				access.setBoard_modify(rs.getInt("board_modify"));
				access.setBoard_delete(rs.getInt("board_delete"));
				access.setMem_level_cd(rs.getInt("mem_level_cd"));
				return access;
			}
		});
		return board.get(0);
	}

	@Override
	public BoardAccessVo getNonmemberAccess(int board_no) {
		jtem = getJdbcTemplate();
		List<BoardAccessVo> board = jtem.query(SQL_ACCESS_SELECT_NONMEMBER, 
									new Object[]{new Integer(board_no)}, 
									new RowMapper<BoardAccessVo>() {
			@Override
			public BoardAccessVo mapRow(ResultSet rs, int arg1) throws SQLException {
				BoardAccessVo access = new BoardAccessVo();
				access.setBoard_cd(rs.getInt("board_no"));
				access.setBoard_read(rs.getInt("board_read"));
				access.setBoard_write(rs.getInt("board_write"));
				access.setBoard_modify(rs.getInt("board_modify"));
				access.setBoard_delete(rs.getInt("board_delete"));
				access.setMem_level_cd(rs.getInt("mem_level_cd"));
				return access;
			}
		});
		return board.get(0);
	}

	
	// 게시판에 따른 등급별 권한
	@Override
	public BoardAccessVo getAccessNotice(int mem_level_cd) {
		jtem = getJdbcTemplate();
		List<BoardAccessVo> board = jtem.query(SQL_ACCESS_SELECT_NOTICE, 
									new Object[]{new Integer(mem_level_cd)}, 
									new RowMapper<BoardAccessVo>() {
			@Override
			public BoardAccessVo mapRow(ResultSet rs, int arg1) throws SQLException {
				BoardAccessVo access = new BoardAccessVo();
				access.setBoard_cd(rs.getInt("board_no"));
				access.setBoard_read(rs.getInt("board_read"));
				access.setBoard_write(rs.getInt("board_write"));
				access.setBoard_modify(rs.getInt("board_modify"));
				access.setBoard_delete(rs.getInt("board_delete"));
				access.setMem_level_cd(rs.getInt("mem_level_cd"));
				return access;
			}
		});
		return board.get(0);
	}

	@Override
	public BoardAccessVo getAccessEvent(int mem_level_cd) {
		jtem = getJdbcTemplate();
		List<BoardAccessVo> board = jtem.query(SQL_ACCESS_SELECT_EVENT, 
									new Object[]{new Integer(mem_level_cd)}, 
									new RowMapper<BoardAccessVo>() {
			@Override
			public BoardAccessVo mapRow(ResultSet rs, int arg1) throws SQLException {
				BoardAccessVo access = new BoardAccessVo();
				access.setBoard_cd(rs.getInt("board_no"));
				access.setBoard_read(rs.getInt("board_read"));
				access.setBoard_write(rs.getInt("board_write"));
				access.setBoard_modify(rs.getInt("board_modify"));
				access.setBoard_delete(rs.getInt("board_delete"));
				access.setMem_level_cd(rs.getInt("mem_level_cd"));
				return access;
			}
		});
		return board.get(0);
	}

	@Override
	public BoardAccessVo getAccessQnA(int mem_level_cd) {
		jtem = getJdbcTemplate();
		List<BoardAccessVo> board = jtem.query(SQL_ACCESS_SELECT_QNA, 
									new Object[]{new Integer(mem_level_cd)}, 
									new RowMapper<BoardAccessVo>() {
			@Override
			public BoardAccessVo mapRow(ResultSet rs, int arg1) throws SQLException {
				BoardAccessVo access = new BoardAccessVo();
				access.setBoard_cd(rs.getInt("board_no"));
				access.setBoard_read(rs.getInt("board_read"));
				access.setBoard_write(rs.getInt("board_write"));
				access.setBoard_modify(rs.getInt("board_modify"));
				access.setBoard_delete(rs.getInt("board_delete"));
				access.setMem_level_cd(rs.getInt("mem_level_cd"));
				return access;
			}
		});
		return board.get(0);
	}

	@Override
	public BoardAccessVo getAccessFaQ(int mem_level_cd) {
		jtem = getJdbcTemplate();
		List<BoardAccessVo> board = jtem.query(SQL_ACCESS_SELECT_FAQ, 
									new Object[]{new Integer(mem_level_cd)}, 
									new RowMapper<BoardAccessVo>() {
			@Override
			public BoardAccessVo mapRow(ResultSet rs, int arg1) throws SQLException {
				BoardAccessVo access = new BoardAccessVo();
				access.setBoard_cd(rs.getInt("board_no"));
				access.setBoard_read(rs.getInt("board_read"));
				access.setBoard_write(rs.getInt("board_write"));
				access.setBoard_modify(rs.getInt("board_modify"));
				access.setBoard_delete(rs.getInt("board_delete"));
				access.setMem_level_cd(rs.getInt("mem_level_cd"));
				return access;
			}
		});
		return board.get(0);
	}

	@Override
	public BoardAccessVo getAccessReview(int mem_level_cd) {
		jtem = getJdbcTemplate();
		List<BoardAccessVo> board = jtem.query(SQL_ACCESS_SELECT_REVIEW, 
									new Object[]{new Integer(mem_level_cd)}, 
									new RowMapper<BoardAccessVo>() {
			@Override
			public BoardAccessVo mapRow(ResultSet rs, int arg1) throws SQLException {
				BoardAccessVo access = new BoardAccessVo();
				access.setBoard_cd(rs.getInt("board_no"));
				access.setBoard_read(rs.getInt("board_read"));
				access.setBoard_write(rs.getInt("board_write"));
				access.setBoard_modify(rs.getInt("board_modify"));
				access.setBoard_delete(rs.getInt("board_delete"));
				access.setMem_level_cd(rs.getInt("mem_level_cd"));
				return access;
			}
		});
		return board.get(0);
	}

}
