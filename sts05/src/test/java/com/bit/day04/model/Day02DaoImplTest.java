package com.bit.day04.model;

import static org.junit.Assert.*;

import java.util.Collection;

import org.apache.log4j.Logger;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.FixMethodOrder;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runners.MethodSorters;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import com.bit.day04.model.entity.Day02Vo;

//이름 오름차순으로 테스트 진행
@FixMethodOrder(MethodSorters.NAME_ASCENDING)
public class Day02DaoImplTest {
	private static Day02Dao day02Dao;
	private Logger log = Logger.getLogger(this.getClass());
	Day02Vo target;

	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		ApplicationContext ctxt = null;
		ctxt = new GenericXmlApplicationContext("classpath:/applicationContext.xml");
		day02Dao = (Day02Dao) ctxt.getBean("day02Dao");
	}

	@Before
	public void setUp() throws Exception {
		target = new Day02Vo(1, "테스터", "sub1", "내용1", null);
	}

	@Test
	public void test1SelectAll() {
		//null이 나왔다면 앞의 인자가 출력 (is null)
		assertNotNull("is null",day02Dao.selectAll());
		log.debug(day02Dao.selectAll().toString());
	}

	@Test
	public void test2SelectOne() {
		//Day02Vo target = new Day02Vo(1, "테스터", "제목1", "내용11111", null);
		assertEquals(target, day02Dao.selectOne(target.getNum()));
	}

	@Test
	public void test3InsertOne() {
		int before = day02Dao.selectAll().size();
		day02Dao.insertOne(new Day02Vo(0,"junit테스트", "junit테스트", "junit테스트",null));
		int after = day02Dao.selectAll().size();
		assertSame(after, before+1);
	}

	@Test
	public void test4UpdateOne() {
		target.setName("test");
		day02Dao.updateOne(target);

		assertEquals(target, day02Dao.selectOne(target.getNum()));
		
		target.setName("테스터");
		day02Dao.updateOne(target);
		
	}

	//ignore는 제외처리
	@Test
	@Ignore
	public void test5DeleteOne() {
		int before = day02Dao.selectAll().size();
		day02Dao.deleteOne(5);
		int after = day02Dao.selectAll().size();
		assertSame(after, before-1);
	}

}
