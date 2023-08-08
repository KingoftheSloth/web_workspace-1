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
	
	//수정한 후에 alert 이 나와야 합니다.
	out.print("<script>");
	out.print("alert('회원 정보 수정이 완료되었습니다.');");
	out.print("location.href='MemberList.jsp';");
	out.print("</script>");
%>
<!-- RegisterSave.jsp에는 script 태그를 아래 라인에 작성해 보세요. -->
<script type="text/javascript">
	alert('테스트')
</script>
