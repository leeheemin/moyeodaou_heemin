package kr.co.daou.service;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Service;

@Service("testService")
public class TestService extends SqlSessionDaoSupport {
	
	public String test(){
		return getSqlSession().selectOne("testQuery.selectName");
	}
	
}
