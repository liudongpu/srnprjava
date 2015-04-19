package com.srnpr.zcom.helper;

import java.util.List;
import java.util.Map;

public class MapHelper {

	public List<Map<String, Object>> upImageSize(List<Map<String, Object>> x,
			int iWidth, String sField) {

		for (Map<String, Object> m : x) {

			if (m.containsKey(sField)) {
				m.put(sField,
						FormatHelper.upImg(m.get(sField).toString(), iWidth));
			}

		}

		return x;

	}

}
