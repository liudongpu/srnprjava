package com.srnpr.zadmin;

import java.io.IOException;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.srnpr.zcom.helper.FormatHelper;
import com.srnpr.zcom.model.MHashMap;
import com.srnpr.zdata.manager.DataTableManager;
import com.srnpr.zweb.common.WebConst;
import com.srnpr.zweb.page.UploadFile;
import com.srnpr.zweb.page.WebPage;
import com.srnpr.zweb.process.TwoDimensionCode;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/")
	public String home(Model model, HttpServletRequest request) {

		return index("newsinfo", "main-main", model, request);

		// return index("ahinfo", "main-main", model,request);

		/*
		 * String[]
		 * sUrls=StringUtils.split(request.getRequestURL().toString(),".");
		 * 
		 * if(sUrls.length>1&&sUrls[1].equals("yinxl")) { String sSubString=
		 * StringUtils.substringBetween(request.getRequestURL().toString(),
		 * "//", ".");
		 * 
		 * if(StringUtils.isNotEmpty(sSubString)&&!sSubString.equals("www")&&!(
		 * sSubString.length()<4)) { if(sSubString.equals("ym")) { return
		 * index("zyou-y", "login-ylogin", model,request); } else { return
		 * index("yinfo", "home-"+sSubString, model,request); } } }
		 * 
		 * 
		 * 
		 * 
		 * 
		 * 
		 * return index("yinfo", "main-main", model,request);
		 */
	}

	@RequestMapping(value = "/manage", method = RequestMethod.GET)
	public String manage(Model model, HttpServletRequest request) {

		// return index("zyou", "chart-system_table", model,request);

		if (request.getRequestURL().toString().indexOf("yinxl") > -1) {
			return index("zyou-y", "login-ylogin", model, request);
		} else if (request.getRequestURL().toString().indexOf("boguan") > -1) {
			return index("zyou-login", "login-login", model, request);
		} else {

			// return index("zyou-ah", "login-ahlogin", model,request);

			return index("zyou-login", "login-login", model, request);
		}

	}

	@RequestMapping(value = "/ym", method = RequestMethod.GET)
	public String yin(Model model, HttpServletRequest request) {

		// return index("zyou", "chart-system_table", model,request);

		// WebConst.PutWebCnfig("zyou", mConfig);

		return index("zyou-y", "login-ylogin", model, request);

	}

	@RequestMapping(value = "am", method = RequestMethod.GET)
	public String am(Model model, HttpServletRequest request) {

		// return index("zyou", "chart-system_table", model,request);

		// WebConst.PutWebCnfig("zyou", mConfig);

		return index("zyou-ah", "login-ahlogin", model, request);

	}

	@RequestMapping(value = "/y", method = RequestMethod.GET)
	public String defy(Model model, HttpServletRequest request) {

		return index("yinfo", "main-main", model, request);
	}

	@RequestMapping(value = "/qrcode/{path}/{url}", produces = { "application/binary;charset=UTF-8" })
	@ResponseBody
	public String qrcode(@PathVariable("path") String sPath,
			@PathVariable("url") String sUrl, Model model,
			HttpServletRequest request, HttpServletResponse response) {

		response.setContentType("application/binary;charset=UTF-8");

		if (sPath.equals("good")) {

			String sName = DataTableManager.Get("info_good")
					.upOneMap("uid", sUrl).get("code").toString();

			response.setHeader("Content-disposition", "attachment; filename="
					+ sName + ".png");// 组装附件名称和格式

			try {
				TwoDimensionCode.getInstance().encoderQRCode(
						"http://m.boguanpaimai.com/newsinfo/mgood-qr-" + sUrl,
						response.getOutputStream(), "png");
			} catch (IOException e) {

				e.printStackTrace();
			}
		} else if (sPath.equals("special")) {

			response.setHeader("Content-disposition",
					"attachment; filename=qrcode"+FormatHelper.GetDateTime()+".zip");// 组装附件名称和格式

			try {
				TwoDimensionCode.getInstance().createZipFile(
						response.getOutputStream(), "png",
						sUrl);
			} catch (IOException e) {

				e.printStackTrace();
			}
		}

		return null;
	}

	@RequestMapping(value = "/{path}/{url}")
	public String index(@PathVariable("path") String sPath,
			@PathVariable("url") String sUrl, Model model,
			HttpServletRequest request) {
		// HttpServletRequest request = ((ServletRequestAttributes)
		// RequestContextHolder.getRequestAttributes()).getRequest();

		MHashMap cMap = new MHashMap();
		@SuppressWarnings("unchecked")
		Enumeration<String> eKey = request.getParameterNames();
		while (eKey.hasMoreElements()) {
			String string = eKey.nextElement();
			cMap.put(string,
					StringUtils.join(request.getParameterValues(string), ","));

		}

		String sContentType = request.getContentType();

		if (StringUtils.contains(sContentType, "multipart/form-data")) {
			DiskFileItemFactory factory = new DiskFileItemFactory();

			// factory.setSizeThreshold(4096); // 设置缓冲区大小，这里是4kb
			// factory.setRepository(tempPathFile);// 设置缓冲区目录

			// Create a new file upload handler
			ServletFileUpload upload = new ServletFileUpload(factory);

			// Set overall request size constraint
			// upload.setSizeMax(4194304); // 设置最大文件尺寸，这里是4MB

			List<FileItem> items = null;

			try {
				items = upload.parseRequest(request);
			} catch (FileUploadException e) {
				e.printStackTrace();
			}// 得到所有的文件
			Iterator<FileItem> i = items.iterator();
			while (i.hasNext()) {
				FileItem fi = (FileItem) i.next();
				String fileName = fi.getName();

				if (fileName != null) {
					model.addAttribute(
							"serverTime",
							new UploadFile().editorUpload(sUrl, fileName,
									fi.get(), cMap));
				}
			}

		} else {
			model.addAttribute("serverTime",
					new WebPage().upPageHtml(sPath, sUrl, cMap));
		}
		return "home";
	}

}
