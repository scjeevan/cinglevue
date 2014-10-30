package com.zm.model;

import java.io.Serializable;

public class School implements Serializable {

	private static final long serialVersionUID = 1L;
	private String schoolName;

	public String getSchoolName() {
		return schoolName;
	}

	public void setSchoolName(String schoolName) {
		this.schoolName = schoolName;
	}
}
