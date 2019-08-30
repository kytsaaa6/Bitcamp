package com.bitcamp.review.dao;

import java.util.List;
import java.util.Map;

import com.bitcamp.review.domain.Review;

public interface InterfaceDao {
	
	public int writeReview(Review review);
	
	public int deleteReview(int id);
	
	public Review selectByIdx(int id);
	
	public int editReview(Review review);
	
	public List<Review> selectAllList();

	public List<Review> searchReview(Map<String, Object> params);
	
}
