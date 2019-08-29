package com.bitcamp.review.domain;

public class EdtReview {

	private int idx;
	private int idx_c;
	private int idx_h;
	private int rate;
	private String content;
	
	
	public EdtReview() {}
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public int getIdx_c() {
		return idx_c;
	}
	public void setIdx_c(int idx_c) {
		this.idx_c = idx_c;
	}
	public int getIdx_h() {
		return idx_h;
	}
	public void setIdx_h(int idx_h) {
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
