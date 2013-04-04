package com.srnpr.zcom.helper;

import java.io.File;
import java.io.StringWriter;
import java.util.Locale;

import freemarker.cache.FileTemplateLoader;
import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;

public class FreemarkerHelper {

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

	public static String GetStringFromTemp(String sTempPath, String sTempName,
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

			try {

				template.process(oRootMap, sWriter);
			} catch (TemplateException e) {
				e.printStackTrace();
			}

			sReturn = sWriter.toString();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return sReturn;
	}

}
