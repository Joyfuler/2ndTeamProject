package com.project.adventure.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.project.adventure.util.Paging;
import com.project.adventure.vo.Member;
import com.project.adventure.vo.Order;

public interface MemberService {
	public int midConfirm(String mid);
	public int memailConfirm(String memail);
	public void makeRandomNumber();
	public String joinEmail(String memail);
	public void mailSend(String setFrom, String toMail, String title, String content);
	public int joinMember(Member member, HttpSession session);
	public String loginCheck(String mid, String mpw, HttpSession session);
	public String findId(Member member);
	public String findPw(Member member);
	public int modifyMember(Member member, HttpSession session);
	public int withDrawalMember(String mid, HttpSession session);
	public void minusMemberPoint(Order order);
	public void plusMemberPoint(Member member);
	public int getMemberCount();
	public List<Member> memberList(String pageNum,Member member);
	public int workermodify(Member member, HttpSession session);
	public int towithDrawalMember(String[] mid);
	public int workerRestoreLevel(String[] mid);
}
