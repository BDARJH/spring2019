package com.bit.day05.model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.bit.day05.model.entity.Day05ListVo;

@Repository("Day05Dao")
public class Day05DaoImpl implements Day05Dao{
	@Autowired
	JdbcTemplate jdbcTemplate;

	@Override
	public List<Day05ListVo> selectAll() {
		String sql = "select * from day05list";
		return jdbcTemplate.query(sql, new RowMapper<Day05ListVo>() {

			@Override
			public Day05ListVo mapRow(ResultSet rs, int rowNum) throws SQLException {
				
				return new Day05ListVo(rs.getInt("num"),
						rs.getString("sub"),
						rs.getString("name"),
						rs.getString("content"),
						rs.getDate("nalja"));
			}
			
		});
	}

	@Override
	public Day05ListVo selectOne(int num) {
		String sql = "select * from day05list where num=?";
		return jdbcTemplate.queryForObject(sql, new RowMapper<Day05ListVo>() {

			@Override
			public Day05ListVo mapRow(ResultSet rs, int rowNum) throws SQLException {
				
				return new Day05ListVo(rs.getInt("num"),
						rs.getString("sub"),
						rs.getString("name"),
						rs.getString("content"),
						rs.getDate("nalja"));
			}
			
		} ,num);
	}

	@Override
	public void insertOne(Day05ListVo bean) {
		
	}

	@Override
	public int updateOne(Day05ListVo bean) {
		return 0;
	}

	@Override
	public int deleteOne(int num) {
		return 0;
	}

}
