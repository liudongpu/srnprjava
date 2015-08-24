package com.srnpr.zweb.process;

import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

import javax.imageio.ImageIO;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import com.srnpr.zdata.manager.DataBaseManager;
import com.srnpr.zdata.manager.DataTableManager;

public class TwoDimensionCode {
	private static TwoDimensionCode instance = new TwoDimensionCode();

	public static TwoDimensionCode getInstance() {
		return instance;
	}

	/**
	 * Creates a zip file
	 */
	public void createZipFile(OutputStream output, String imgType,
			String contents) {
		try {
			ByteArrayOutputStream bZip = new ByteArrayOutputStream();
			ZipOutputStream outStream = new ZipOutputStream(bZip);

			List<Map<String, Object>> list = DataTableManager.Get("info_good")
					.upListListByQuery("special_uid", contents);

			for (Map<String, Object> map : list) {

				ByteArrayOutputStream bf = new ByteArrayOutputStream();

				BufferedImage bufImg = this.getQR_CODEBufferedImage(
						"http://m.boguanpaimai.com/newsinfo/mgood-qr-"
								+ map.get("uid").toString(),
						BarcodeFormat.QR_CODE, 500, 500,
						this.getDecodeHintType());

				ImageIO.write(bufImg, imgType, bf);
				bf.flush();

				outStream.putNextEntry(new ZipEntry(map.get("code").toString()
						+ "." + imgType));

				outStream.write(bf.toByteArray());

				// Close zip entry and file streams
				outStream.closeEntry();

			}

			outStream.close();

			output.write(bZip.toByteArray());

		} catch (IOException e) {

			e.printStackTrace();
		}

	}

	/**
	 * 
	 * @param content
	 * @param imgPath
	 * @param imgType
	 * @param size
	 */
	public void encoderQRCode(String content, OutputStream output,
			String imgType) {
		try {
			BufferedImage bufImg = this.getQR_CODEBufferedImage(content,
					BarcodeFormat.QR_CODE, 500, 500, this.getDecodeHintType());

			ImageIO.write(bufImg, imgType, output);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private BufferedImage getQR_CODEBufferedImage(String content,
			BarcodeFormat barcodeFormat, int width, int height,
			Map<EncodeHintType, ?> hints) {
		MultiFormatWriter multiFormatWriter = null;
		BitMatrix bm = null;
		BufferedImage image = null;
		try {
			multiFormatWriter = new MultiFormatWriter();

			bm = multiFormatWriter.encode(content, barcodeFormat, width,
					height, hints);

			int margin = 5;
			bm = this.updateBit(bm, margin);

			int w = bm.getWidth();
			int h = bm.getHeight();
			image = new BufferedImage(w, h, BufferedImage.TYPE_INT_RGB);

			for (int x = 0; x < w; x++) {
				for (int y = 0; y < h; y++) {
					image.setRGB(x, y, bm.get(x, y) ? 0xFF000000 : 0xffffffff);
				}
			}

			image = zoomInImage(image, width, height);
		} catch (WriterException e) {
			e.printStackTrace();
		}
		return image;
	}

	/**
	 * @return
	 */
	public Map<EncodeHintType, Object> getDecodeHintType() {
		Map<EncodeHintType, Object> hints = new HashMap<EncodeHintType, Object>();
		hints.put(EncodeHintType.ERROR_CORRECTION, ErrorCorrectionLevel.L);

		hints.put(EncodeHintType.CHARACTER_SET, "utf-8");
		hints.put(EncodeHintType.MAX_SIZE, 350);
		hints.put(EncodeHintType.MIN_SIZE, 100);
		hints.put(EncodeHintType.MARGIN, 1);
		return hints;
	}

	private BitMatrix updateBit(BitMatrix matrix, int margin) {

		int tempM = margin * 2;

		int[] rec = matrix.getEnclosingRectangle();

		int resWidth = rec[2] + tempM;

		int resHeight = rec[3] + tempM;

		BitMatrix resMatrix = new BitMatrix(resWidth, resHeight);

		resMatrix.clear();

		for (int i = margin; i < resWidth - margin; i++) {

			for (int j = margin; j < resHeight - margin; j++) {

				if (matrix.get(i - margin + rec[0], j - margin + rec[1])) {

					resMatrix.set(i, j);

				}

			}

		}

		return resMatrix;

	}

	/**
	 * 
	 */

	public BufferedImage zoomInImage(BufferedImage originalImage, int width,
			int height) {

		BufferedImage newImage = new BufferedImage(width, height,
				originalImage.getType());

		Graphics g = newImage.getGraphics();

		g.drawImage(originalImage, 0, 0, width, height, null);

		g.dispose();

		return newImage;

	}
}