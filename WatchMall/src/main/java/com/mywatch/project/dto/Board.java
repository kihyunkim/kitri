package com.mywatch.project.dto;

public class Board {
	public Board() {
	}

	int bq_num;
	String bq_title;
	String bq_writer;
	String bq_content;
	String bq_regdate;
	int bq_hitcount;

	public int getBq_num() {
		return bq_num;
	}

	public void setBq_num(int bq_num) {
		this.bq_num = bq_num;
	}

	public String getBq_title() {
		return bq_title;
	}

	public void setBq_title(String bq_title) {
		this.bq_title = bq_title;
	}

	public String getBq_writer() {
		return bq_writer;
	}

	public void setBq_writer(String bq_writer) {
		this.bq_writer = bq_writer;
	}

	public String getBq_content() {
		return bq_content;
	}

	public void setBq_content(String bq_content) {
		this.bq_content = bq_content;
	}

	public String getBq_regdate() {
		return bq_regdate;
	}

	public void setBq_regdate(String bq_regdate) {
		this.bq_regdate = bq_regdate;
	}

	public int getBq_hitcount() {
		return bq_hitcount;
	}

	public void setBq_hitcount(int bq_hitcount) {
		this.bq_hitcount = bq_hitcount;
	}

}
