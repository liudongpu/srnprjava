package com.srnpr.zweb.helper;

import java.io.FileInputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.io.FilenameUtils;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import com.srnpr.zcom.base.BaseClass;

public class PoiHelper extends BaseClass {

	public List<List<String>> upExcelData(String sFileName) {
		List<List<String>> lReturns = new ArrayList<List<String>>();
		ArrayList<String> aList = new ArrayList<String>();

		try {

			InputStream stream = new FileInputStream(sFileName);
			Workbook wb = null;

			String fileType = FilenameUtils.getExtension(sFileName);

			if (fileType.equals("xls")) {
				wb = new HSSFWorkbook(stream);
			} else if (fileType.equals("xlsx")) {
				wb = new XSSFWorkbook(stream);
			} else {
				BError(969901003, sFileName);
			}
			Sheet sheet1 = wb.getSheetAt(0);
			for (Row row : sheet1) {
				for (Cell cell : row) {
					
					
					aList.add(cell.getStringCellValue());
				}
				lReturns.add(aList);

			}
		} catch (Exception e) {

		}

		return lReturns;

	}

}
