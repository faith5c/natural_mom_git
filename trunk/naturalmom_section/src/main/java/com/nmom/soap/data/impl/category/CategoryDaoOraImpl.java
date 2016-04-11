package com.nmom.soap.data.impl.category;

import java.sql.Types;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcDaoSupport;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;

import com.nmom.soap.data.dao.category.ICategoryDao;

public class CategoryDaoOraImpl extends NamedParameterJdbcDaoSupport implements ICategoryDao{
	private final String SQL_SELECT_FIND_CATEGORYNAME = "SELECT category_nm FROM tb_category WHERE category_cd=:category_cd";

	public String getCategoryNameByCd(int category_cd) throws DataAccessException {
		NamedParameterJdbcTemplate npjtem = this.getNamedParameterJdbcTemplate();
		
		MapSqlParameterSource ps = new MapSqlParameterSource();
		ps.addValue("category_cd", category_cd, Types.INTEGER);
		return npjtem.queryForObject(SQL_SELECT_FIND_CATEGORYNAME, ps, String.class);
	}
}