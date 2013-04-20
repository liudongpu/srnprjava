package com.srnpr.zweb.fiter;

import java.util.Comparator;

import com.srnpr.zweb.model.MWebFields;

public class WebFieldsComparator implements Comparator<MWebFields> {

	public int compare(MWebFields o1, MWebFields o2) {
		if (o1.getLevel() > o2.getLevel())
			return 1;
		else if (o1.getLevel() == o2.getLevel()) {

			return 0;

		} else
			return -1;
	}
}
