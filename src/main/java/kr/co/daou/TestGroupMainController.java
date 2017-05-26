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
	public String init(Model model) {						// testGroupMain ������ �ʱ�ȭ
		// ���� ���� ��� view�� ���
		List<Map<String, Object>> sharing_list;				// �׷��� ��� ���ϰ��� ��� List
		
		sharing_list = initFileService.getFileList();
		for(int i=0;i<sharing_list.size();i++){
			Map<String, Object> map;
			
			map = sharing_list.get(i);						// list���� ���� ���� get. (�����̸� / �Խ���)
			System.out.println(map.get("fileName") + "," + map.get("who"));
		}	
		
		model.addAttribute("sharing_list", sharing_list);
		return "testGroupMain";
	}
	@RequestMapping(value = "/fileUpload2", method=RequestMethod.POST)
	public String fileUpload(HttpServletRequest req, HttpServletResponse rep){
		String path = "c://abc/";							// ������ ����� PATH
		
		MultipartFile mfile = null;							// ������ �ø� multipartfile
		String original_FileName;							// �ش� multipartfile�� �̸�
		Iterator<String> iter;
		List<Map<String, Object>> fileInfo_list = new ArrayList<Map<String, Object>>();		// �������� ������ ����� map�� list
		Map<String, Object> map = null;							// ���Ͽ� ���� ������ ����ִ� map
		String storedName = null;
		
		System.out.println("fileUpload() call");
		try{							
			// MultipartHttpServletRequest�� ����ȯ
			MultipartHttpServletRequest mhsr = (MultipartHttpServletRequest) req; 
			iter = mhsr.getFileNames();
			
			// ������ ����� PATH�� ���丮�� �������� �ʴ´ٸ� ����
			File file = new File(path);
	        if(file.exists() == false){
	            file.mkdirs();
	        }
	        
			// iterator�� ���� ��� multipartfile 
			while (iter.hasNext()) { 
				cnt ++;
				mfile = mhsr.getFile(iter.next());				// iter.next�� ������ multipartFile�� ������.
				original_FileName = mfile.getOriginalFilename();
				System.out.println(cnt +" - "+ original_FileName);			// print ���� �̸�.
			
				/* ������ ����� �����̸� (origin name) �� ���� ������ �����̸� ���� �� ������ ����*/
				String temp = original_FileName.substring(original_FileName.lastIndexOf('.'));
				storedName = path + getRandomName() + temp;
				file = new File(storedName);		// ������ ����� ���� ���ϰ�� + // + random �����̸� + ���������� Ȯ����
				
				if(mfile.isEmpty() == false)
					mfile.transferTo(file);						// multipartfile�� transferTo(���);
				
				/* �ش� ���Ͽ� ���� ������ ����ִ� HashMap */
				
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
		
		uploadService.insert_fileinfo_DB(fileInfo_list);			// ���� ������ DB�� �����ϴ� ����
		
		return "testGroupMain";
	}
	
	// ������ ������ ���� Filename
	public static String getRandomName(){
		return UUID.randomUUID().toString().replaceAll("-","");
	}
	
}
