package kr.co.daou.service;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Service;

@Service("initFileService")
public class InitFileService extends SqlSessionDaoSupport{
	/* ���� ���� ��� ���*/
	public List<Map<String, Object>> getFileList(){
		return getSqlSession().selectList("testQuery.showAllFile");
	}
	
}
