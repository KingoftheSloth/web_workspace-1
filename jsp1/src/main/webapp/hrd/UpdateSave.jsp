<%@page import="sample.dto.MemberDto"%>
<%@page import="sample.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//메소드 방식이 post 일 때는 인코딩이 꼭 필요합니다.	
	request.setCharacterEncoding("UTF-8");

	String temp = request.getParameter("custno");
	String custname = request.getParameter("custname");
	String phone = request.getParameter("phone");
	String address = request.getParameter("address");
	String grade = request.getParameter("grade");
	String city = request.getParameter("city");
	int custno=0;
	if(temp != null)
		custno = Integer.parseInt(temp);
	
	MemberDao dao = MemberDao.getMemberDao();
	MemberDto dto = 
	new MemberDto(custno,custname,phone,address,null,grade,city);
	dao.update(dto);
%>