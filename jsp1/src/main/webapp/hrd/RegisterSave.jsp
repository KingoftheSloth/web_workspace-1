<%@page import="sample.dto.MemberDto"%>
<%@page import="sample.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//파라미터 가져오기

	//파라미터 값으로 dto 객체 생성
	MemberDao dao = MemberDao.getMemberDao();
	MemberDto dto = null;
	dao.insert(dto);		//db 테이블에 반영된 것 확인하세요.
%>