package kr.co.daou;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import kr.co.daou.service.InitFileService;
import kr.co.daou.service.UploadFileService;

@Controller
public class TestGroupMainController {
	private static final Logger logger = LoggerFactory.getLogger(TestGroupMainController.class);
	int cnt = 0;
	@Resource(name="uploadService")
	private UploadFileService uploadService;
	@Resource(name="initFileService")
	private InitFileService initFileService;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/testGroupMain")
	public String init(Model model) {						// testGroupMain 페이지 초기화
		// 공유 파일 목록 view에 출력
		List<Map<String, Object>> sharing_list;				// 그룹의 모든 파일공유 목록 List
		
		sharing_list = initFileService.getFileList();
		for(int i=0;i<sharing_list.size();i++){
			Map<String, Object> map;
			
			map = sharing_list.get(i);						// list에서 파일 정보 get. (파일이름 / 게시자)
			System.out.println(map.get("fileName") + "," + map.get("who"));
		}	
		
		model.addAttribute("sharing_list", sharing_list);
		return "testGroupMain";
	}
	@RequestMapping(value = "/fileUpload2", method=RequestMethod.POST)
	public String fileUpload(HttpServletRequest req, HttpServletResponse rep){
		String path = "c://abc/";							// 파일이 저장될 PATH
		
		MultipartFile mfile = null;							// 유저가 올린 multipartfile
		String original_FileName;							// 해당 multipartfile의 이름
		Iterator<String> iter;
		List<Map<String, Object>> fileInfo_list = new ArrayList<Map<String, Object>>();		// 복수개의 파일을 고려한 map의 list
		Map<String, Object> map = null;							// 파일에 관한 정보를 담고있는 map
		String storedName = null;
		
		System.out.println("fileUpload() call");
		try{							
			// MultipartHttpServletRequest로 형변환
			MultipartHttpServletRequest mhsr = (MultipartHttpServletRequest) req; 
			iter = mhsr.getFileNames();
			
			// 서버에 저장될 PATH에 디렉토리가 존재하지 않는다면 생성
			File file = new File(path);
	        if(file.exists() == false){
	            file.mkdirs();
	        }
	        
			// iterator로 받은 모든 multipartfile 
			while (iter.hasNext()) { 
				cnt ++;
				mfile = mhsr.getFile(iter.next());				// iter.next의 정보로 multipartFile을 가져옴.
				original_FileName = mfile.getOriginalFilename();
				System.out.println(cnt +" - "+ original_FileName);			// print 실제 이름.
			
				/* 유저가 명명한 파일이름 (origin name) 과 랜덤 생성한 파일이름 생성 및 서버에 저장*/
				String temp = original_FileName.substring(original_FileName.lastIndexOf('.'));
				storedName = path + getRandomName() + temp;
				file = new File(storedName);		// 서버에 저장될 실제 파일경로 + // + random 생성이름 + 원본파일의 확장자
				
				if(mfile.isEmpty() == false)
					mfile.transferTo(file);						// multipartfile의 transferTo(경로);
				
				/* 해당 파일에 대한 정보를 담고있는 HashMap */
				
				map = new HashMap<String, Object>();
				map.put("FILE_ORIGINAL_NAME", original_FileName);
				map.put("FILE_STORED_NAME", storedName);
				map.put("FILE_SIZE", mfile.getSize());
				fileInfo_list.add(map);
				
				System.out.println(storedName);
			}
			
		}catch (Exception e) { // TODO Auto-generated catch block e.printStackTrace(); 
			System.out.println("Hee - " + e.getMessage());
		}
		
		uploadService.insert_fileinfo_DB(fileInfo_list);			// 파일 정보를 DB에 삽입하는 서비스
		
		return "testGroupMain";
	}
	
	// 서버에 저장할 랜덤 Filename
	public static String getRandomName(){
		return UUID.randomUUID().toString().replaceAll("-","");
	}
	
}
