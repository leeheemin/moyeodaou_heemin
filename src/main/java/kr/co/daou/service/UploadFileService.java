package kr.co.daou.service;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Service;

@Service("uploadService")
public class UploadFileService extends SqlSessionDaoSupport{
	
	/*
	public String test(){
		return getSqlSession().selectOne("testQuery.selectName");
	}
	*/
	
	// ���ε� ���� ������ DB�� insert ���ִ� �޼ҵ�
	public void insert_fileinfo_DB(List<Map<String, Object>> param){
		Map<String, Object> map;
		System.out.println("uploadService.insert_fileinfo_DB()");
		for(int i=0;i<param.size();i++){
			map = param.get(i);						// list���� ���� ���� get.
			getSqlSession().selectOne("testQuery.insertFile", map);
		}	
	}
	
	
}
