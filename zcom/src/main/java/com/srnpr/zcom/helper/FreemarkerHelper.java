package com.srnpr.zcom.helper;

import java.io.File;
import java.io.StringWriter;
import java.util.Locale;

import com.srnpr.zcom.base.BaseClass;

import freemarker.cache.FileTemplateLoader;
import freemarker.template.Configuration;
import freemarker.template.Template;

public class FreemarkerHelper extends BaseClass {

	/**
	 * @param sTempPath
	 * @param sTempName
	 * @param oRootMap
	 * @return Process Templete
	 * @description
	 * @version 1.0
	 * @author srnpr
	 * @update 2013-4-4 下午4:55:42
	 */

	public  String GetStringFromTemp(String sTempPath, String sTempName,
			Object oRootMap) {

		String sReturn = "";
		try {

			Configuration configuration = new Configuration();

			FileTemplateLoader fTemplateLoader = new FileTemplateLoader(
					new File(sTempPath));

			configuration.setEncoding(Locale.CHINA, "UTF-8");
			configuration.setTemplateLoader(fTemplateLoader);
			Template template = configuration.getTemplate(sTempName);

			StringWriter sWriter = new StringWriter();

			template.process(oRootMap, sWriter);


			sReturn = sWriter.toString();

		} catch (Exception e) {
			BError(e,967901004,sTempPath,sTempName);
		}

		return sReturn;
	}

}
