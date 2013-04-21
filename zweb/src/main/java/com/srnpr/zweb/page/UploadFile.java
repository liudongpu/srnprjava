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

	
	
	private boolean bAutoRename=true;
	
	private boolean bCheckName=true;
	
	private String filePath="empty";
	
	private String fileUrl="";
	
	private String fileName="";
	
	public String editorUpload(String sUrl,String sFileName,byte[] bFile,String sEditorFuncNum)
	{
		
		if(sUrl.indexOf("?")>-1)
		{
			sUrl=sUrl.substring(0,sUrl.indexOf("?"));
		}
		
		filePath=sUrl.split("-")[1];
		fileName=sFileName;
		
		
		MResult mResult=uploadFile(bFile);
		
		//FileCopyUtils.c
		
		if(mResult.getFlag())
		{
			return FormatHelper.FormatString(BConfig("zweb.upload_editor_success"),String.valueOf(sEditorFuncNum ),fileUrl,mResult.getInfoMessage());
		}
		else
		{

			return mResult.getInfoMessage();
		}
		
		
		
		
	}
	
	private MResult uploadFile(byte[] bFile) 
	{
		MResult mResult=new MResult();
		try
		{
		
		String sFix="";
		//校验文件名称
		if(mResult.getFlag()&&bCheckName)
		{
			
			String sAllowName=BConfig("zweb.upload_allow");
			boolean bFlag=false;
			if(fileName.length()>1)
			{
				sFix= StringUtils.substringAfter(fileName, ".").toLowerCase();
				if(!StringUtils.isEmpty(sFix)&&sFix.length()>0)
				{
					if(StringUtils.contains(sAllowName,"."+ sFix+";"))
					{
						bFlag=true;
					}
				}
				
			}
			
			if(!bFlag)
			{
				mResult.error(969901002, fileName);
			}
			
		}
		
		if(mResult.getFlag())
		{
			
			Date date=new Date();
			SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMdd");
			String sDate= formatter.format(date);
			
			filePath=filePath+"/"+sDate+"/";
			
			FileUtils.forceMkdir(new File( BConfig("zweb.upload_path")+filePath));
			
			if(bAutoRename)
			{
				fileName=ComFunction.upUuid()+"."+sFix;
			}
			

			FileCopyUtils.copy(bFile, new File(BConfig("zweb.upload_path")+filePath+fileName));
			
			fileUrl=BConfig("zweb.upload_url")+filePath+fileName;
			mResult.info(969909002);
			
		}
		
		
		}
		catch(Exception e)
		{
			
			
			
		}
		
		
		
		
		return mResult;
	}
	
	
	
	
	
	
	
	
}
