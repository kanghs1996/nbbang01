package com.kosmo.nbbang.service;

import java.sql.Date;

public class InquiryBbsDTO {
/*
 * inqno number NOT NULL,
	inqtitle nvarchar2(50) NOT NULL,
	inqcontent nvarchar2(2000) NOT NULL,
	inqpostdate date DEFAULT SYSDATE NOT NULL,
	inqoriginfilenames nvarchar2(120),
	inqrealfilenames nvarchar2(240),
	email varchar2(40) NOT NULL,
	PRIMARY KEY (inqno)
 * */
	private String inqno;
	private String inqtitle;
	private String inqcontent;
	private java.sql.Date inqpostdate;
	private String inqoriginfilenames;
	private String inqrealfilenames;
	private String email;
	//각 글에 따른 댓글 총수 저장용
	private String commentCount;
	
	public InquiryBbsDTO() {
		super();
	}
	
	public InquiryBbsDTO(String inqno, String inqtitle, String inqcontent, Date inqpostdate, String inqoriginfilenames,
			String inqrealfilenames, String email,String commentCount) {
		super();
		this.inqno = inqno;
		this.inqtitle = inqtitle;
		this.inqcontent = inqcontent;
		this.inqpostdate = inqpostdate;
		this.inqoriginfilenames = inqoriginfilenames;
		this.inqrealfilenames = inqrealfilenames;
		this.email = email;
		this.commentCount = commentCount;
	}
	
	public String getCommentCount() {
		return commentCount;
	}
	public void setCommentCount(String commentCount) {
		this.commentCount = commentCount;
	}
	public String getInqno() {
		return inqno;
	}
	public void setInqno(String inqno) {
		this.inqno = inqno;
	}
	public String getInqtitle() {
		return inqtitle;
	}
	public void setInqtitle(String inqtitle) {
		this.inqtitle = inqtitle;
	}
	public String getInqcontent() {
		return inqcontent;
	}
	public void setInqcontent(String inqcontent) {
		this.inqcontent = inqcontent;
	}
	public java.sql.Date getInqpostdate() {
		return inqpostdate;
	}
	public void setInqpostdate(java.sql.Date inqpostdate) {
		this.inqpostdate = inqpostdate;
	}
	public String getInqoriginfilenames() {
		return inqoriginfilenames;
	}
	public void setInqoriginfilenames(String inqoriginfilenames) {
		this.inqoriginfilenames = inqoriginfilenames;
	}
	public String getInqrealfilenames() {
		return inqrealfilenames;
	}
	public void setInqrealfilenames(String inqrealfilenames) {
		this.inqrealfilenames = inqrealfilenames;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
}