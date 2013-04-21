package com.srnpr.zadmin;

import java.io.IOException;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.srnpr.zcom.model.MHashMap;
import com.srnpr.zweb.page.UploadFile;
import com.srnpr.zweb.page.WebPage;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model,HttpServletRequest request) {
		// model.addAttribute("serverTime", new
		// WebPage().GetPageHtml("zyou","center") );
		// model.addAttribute("serverTime", new
		// ConfigCacheManager().ShowAllConfig() );
		// return "home";
		return index("zyou", "chart-system_table", model,request);
	}
	
	
	
	

	@RequestMapping(value = "/{path}/{url}")
	public String index(@PathVariable("path") String sPath,
			@PathVariable("url") String sUrl, Model model,HttpServletRequest request) {
		//HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();

		MHashMap cMap = new MHashMap();
		@SuppressWarnings("unchecked")
		Enumeration<String> eKey = request.getParameterNames();
		while (eKey.hasMoreElements()) {
			String string = eKey.nextElement();
			cMap.put(string, request.getParameter(string));
		}

		if (sPath.equals("zweb-file")) {
			 DiskFileItemFactory factory = new DiskFileItemFactory();
			 
			 //factory.setSizeThreshold(4096); // 设置缓冲区大小，这里是4kb
	           //factory.setRepository(tempPathFile);// 设置缓冲区目录
	 
	           // Create a new file upload handler
	           ServletFileUpload upload = new ServletFileUpload(factory);
	 
	           // Set overall request size constraint
	           upload.setSizeMax(4194304); // 设置最大文件尺寸，这里是4MB
	 
	           List<FileItem> items = null;
	           
			try {
				items = upload.parseRequest(request);
			} catch (FileUploadException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}// 得到所有的文件
	           Iterator<FileItem> i = items.iterator();
	           while (i.hasNext()) {
	              FileItem fi = (FileItem) i.next();
	              String fileName = fi.getName();
	              
	              if (fileName != null) {

	                  model.addAttribute("serverTime",new UploadFile().editorUpload(sUrl,  fileName,fi.get(),cMap.get("CKEditorFuncNum").toString()));

	              }
	           }
			
			 
			
			
		} else {
			model.addAttribute("serverTime",
					new WebPage().upPageHtml(sPath, sUrl, cMap));
		}
		return "home";
	}
	
	
	
	
	
	

}
