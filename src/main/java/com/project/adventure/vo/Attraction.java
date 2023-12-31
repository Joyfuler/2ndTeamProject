package com.project.adventure.vo;

import lombok.Data;

@Data
public class Attraction {
	private int aid;
	private String aname;
	private String acontent;
	private String height;
	private String age;
	private String best;
	private String stopday;
	private String tag1;
	private String tag2;
	private String aimage;
	private String headcount;
	// top-N구문에서 필요한 필드
	private int startRow;
	private int endRow;
	//관리자페이지 검색
	private String schTitle;
}
