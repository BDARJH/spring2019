package com.bit.day05.model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.bit.day05.model.entity.Day02Vo;

//자동으로 객체 생성하기 위해 component로 설정
//하지만 이건 복불복, 될 수도 있고 안될 수도 
//왜냐면 controller가 먼저 생성되어 dao를 원하게되면 dao가 먼저 만들어져있어야만 한다
//하지만 순서가 없기때문에 dao가 먼저생성될지 controller에서 먼저 원하게 될지 모른다.
//따라서 순서를 정해줘야한다. 이때 필요한게 repository -> controller보다 먼저 객체를 생성한다
//@Repository(value = "day02Dao")
public class Day02DaoImpl implements Day02Dao{
	
//	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	
	@Override
	public List<Day02Vo> selectAll() {
		String sql = "select * from day02";
		return jdbcTemplate.query(sql, new RowMapper<Day02Vo>() {

			@Override
			public Day02Vo mapRow(ResultSet rs, int rowNum) throws SQLException {
				return new Day02Vo(rs.getInt("num"),
						rs.getString("name"),
						rs.getString("sub"),
						rs.getString("content"),
						rs.getDate("nalja"));
			}
			
		});
	}

	@Override
	public Day02Vo selectOne(int num) {
		String sql = "select * from day02 where num=?";
		return jdbcTemplate.queryForObject(sql, new RowMapper<Day02Vo>() {

			@Override
			public Day02Vo mapRow(ResultSet rs, int rowNum) throws SQLException {
				return new Day02Vo(rs.getInt("num"),
						rs.getString("name"),
						rs.getString("sub"),
						rs.getString("content"),
						rs.getDate("nalja"));
			}
			
		}, num);
	}

	@Override
	public void insertOne(Day02Vo bean) {
		String sql = "insert into day02 (name,sub,content,nalja) values (?,?,?,now())";
		jdbcTemplate.update(sql, bean.getName(), bean.getSub(), bean.getContent());
	}

	@Override
	public int updateOne(Day02Vo bean) {
		String sql = "update day02 set name=?,sub=?,content=? where num=?";
		return jdbcTemplate.update(sql, bean.getName(), bean.getSub(), bean.getContent(), bean.getNum());
	}

	@Override
	public int deleteOne(int num) {
		String sql = "delete from day02 where num=?";
		return jdbcTemplate.update(sql, num);
	}

}
