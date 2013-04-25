package com.srnpr.zweb.page;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.commons.io.FileUtils;
import org.apache.commons.lang.StringUtils;
import org.apache.commons.lang.time.DateUtils;
import org.springframework.util.FileCopyUtils;

import com.srnpr.zcom.base.BaseClass;
import com.srnpr.zcom.common.ComFunction;
import com.srnpr.zcom.helper.FormatHelper;
import com.srnpr.zcom.model.MHashMap;
import com.srnpr.zcom.model.MResult;

public class UploadFile extends BaseClass {

	private boolean bAutoRename = true;

	private boolean bCheckName = true;

	private String filePath = "empty";

	private String fileUrl = "";

	private String fileName = "";

	public String editorUpload(String sUrl, String sFileName, byte[] bFile,
			MHashMap cMap) {

		if (sUrl.indexOf("?") > -1) {
			sUrl = sUrl.substring(0, sUrl.indexOf("?"));
		}

		String[] sSplitUrl = sUrl.split("-");

		String sFileTarget = sSplitUrl[0];

		filePath = sSplitUrl[1];
		fileName = sFileName;

		MResult mResult = uploadFile(bFile);

		// FileCopyUtils.c

		String sReturn = "";

		if (sFileTarget.equals("editor")) {

			if (mResult.getFlag()) {
				String sEditorFuncNum = cMap.get("CKEditorFuncNum").toString();

				sReturn = FormatHelper.FormatString(
						BConfig("zweb.upload_editor_success"),
						String.valueOf(sEditorFuncNum), fileUrl,
						mResult.getMessage());
			} else {

				sReturn = mResult.getMessage();
			}
		} else {

			
			
				mResult.setRun(BConfig("zweb.upload_file_success"));

				
				MHashMap mMap=new MHashMap();
				mMap.put("fileurl", fileUrl);
				mMap.put("parentid", cMap.get("parentid"));
				
				
				mResult.setResult(mMap);
				
					sReturn=mResult.ToJsonString();

				
			
			
			
		}

		return sReturn;

	}

	private MResult uploadFile(byte[] bFile) {
		MResult mResult = new MResult();
		try {

			String sFix = "";
			// 校验文件名称
			if (mResult.getFlag() && bCheckName) {

				String sAllowName = BConfig("zweb.upload_allow");
				boolean bFlag = false;
				if (fileName.length() > 1) {
					sFix = StringUtils.substringAfter(fileName, ".")
							.toLowerCase();
					if (!StringUtils.isEmpty(sFix) && sFix.length() > 0) {
						if (StringUtils.contains(sAllowName, "." + sFix + ";")) {
							bFlag = true;
						}
					}

				}

				if (!bFlag) {
					mResult.error(969901002, fileName);
				}

			}

			if (mResult.getFlag()) {

				Date date = new Date();
				SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMdd");
				String sDate = formatter.format(date);

				filePath = filePath + "/" + sDate + "/";

				FileUtils.forceMkdir(new File(BConfig("zweb.upload_path")
						+ filePath));

				if (bAutoRename) {
					fileName = ComFunction.upUuid() + "." + sFix;
				}

				FileCopyUtils.copy(bFile, new File(BConfig("zweb.upload_path")
						+ filePath + fileName));

				fileUrl = BConfig("zweb.upload_url") + filePath + fileName;
				
				
				
				
				mResult.info(969909002);

			}

		} catch (Exception e) {

		}

		return mResult;
	}

}
