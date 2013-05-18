package com.srnpr.zyou.testexcel;

import static org.junit.Assert.*;

import java.io.FileInputStream;
import java.io.InputStream;

import org.apache.commons.io.FilenameUtils;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.junit.Test;

public class TestExcel {

	@Test
	public void test() {
		try {

			String sFileName = "D:\\test.xls";

			InputStream stream = new FileInputStream(sFileName);
			Workbook wb = null;

			String fileType = FilenameUtils.getExtension(sFileName);

			if (fileType.equals("xls")) {
				wb = new HSSFWorkbook(stream);
			} else if (fileType.equals("xlsx")) {
				wb = new XSSFWorkbook(stream);
			} else {
				System.out.println("您输入的excel格式不正确");
			}
			Sheet sheet1 = wb.getSheetAt(0);
			for (Row row : sheet1) {
				for (Cell cell : row) {
					System.out.print(cell.getStringCellValue() + "  ");

					// Picture p=(Picture)cell;

				}
				System.out.println();
			}
		} catch (Exception e) {

		}
	}

}
