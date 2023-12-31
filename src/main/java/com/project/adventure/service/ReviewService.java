package com.project.adventure.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.project.adventure.vo.Order_Detail;
import com.project.adventure.vo.Review;
import com.project.adventure.vo.Review_Comment;

public interface ReviewService {
	public void imageUpload(HttpServletRequest request, 
			HttpServletResponse response, 
			MultipartHttpServletRequest multiFile);
	public List<Review> reviewList(Review review, String pageNum);
	public int writeReview(Review review);
	public int totCnt(Review review);
	public Review getReviewContent(int rid);
	public Review reviewInfo();
	public void reviewWrite(Review review, MultipartHttpServletRequest mRequest, Model model, String pointObtained);
	public int reviewDelete(int rid);
	public void reviewModify(Review review, MultipartHttpServletRequest mRequest, Model model);
	public List<Review_Comment> getReviewComments(int rid, String replyPageNum);
	public int commentTotCnt(int rid);
	public String commentWrite(Review_Comment review_Comment, HttpSession session);
	public Review_Comment getOriginalCommentDto(int rcid);
	public String reviewCommentReply(Review_Comment review_Comment, HttpSession session);
	public int commentDelete(int rcid);
	public Review_Comment commentDetail(int rcid);
	public int modifyComment(Review_Comment review_Comment);
	public int workerDeleteReview(int[] rid);
}