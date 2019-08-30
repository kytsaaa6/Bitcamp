package com.bitcamp.review.domain;

public class EdtReview {

	private int idx;
	private String idx_c;
	private String idx_h;
	private int rate;
	private String content;
	
	
	public EdtReview() {}
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getIdx_c() {
		return idx_c;
	}
	public void setIdx_c(String idx_c) {
		this.idx_c = idx_c;
	}
	public String getIdx_h() {
		return idx_h;
	}
	public void setIdx_h(String idx_h) {
		this.idx_h = idx_h;
	}
	public int getRate() {
		return rate;
	}
	public void setRate(int rate) {
		this.rate = rate;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
		
	@Override
	public String toString() {
		return "EdtReview [idx=" + idx + ", idx_c=" + idx_c + ", idx_h=" + idx_h + ", rate=" + rate + ", content="
				+ content + "]";
	}
	
	public Review toReview() {
		
		Review review = new Review();
		review.setIdx(idx);
		review.setIdx_c(idx_c);
		review.setIdx_h(idx_h);
		review.setRate(rate);
		review.setContent(content);
		
		return review;
	}

	
}
