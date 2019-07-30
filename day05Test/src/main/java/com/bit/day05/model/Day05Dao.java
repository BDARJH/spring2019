package com.bit.day05.model;

import java.util.List;

import com.bit.day05.model.entity.Day05ListVo;

public interface Day05Dao {
	
	List<Day05ListVo> selectAll();
	
	Day05ListVo selectOne(int num);
	
	void insertOne(Day05ListVo bean);
	
	int updateOne(Day05ListVo bean);
	
	int deleteOne(int num);
}
