<%@page import="sample.dto.MemberDto"%>
<%@page import="sample.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">  
<title>홈쇼핑 회원 정보 수정</title>
	<link rel="stylesheet" href="./Layout.css?v=3">
	<link rel="stylesheet" href="./MemberUpdate.css?v=3">
</head>
<body>
<!-- 정보 수정 화면은 현재값을 먼저 보여주고 수정할 수 있게 합니다. custno 즉 PK 값으로 
     db에서 select 한 결과를 화면에 표시하는 코드가 필요합니다. -->
<!-- MemberList.jsp 에서 보낸 파라미터를 받아 custno 변수에 저장합니다. 그리고 value에서 출력하기. -->
<%
	String custno = request.getParameter("custno");
	MemberDao dao = MemberDao.getMemberDao();
	MemberDto dto = null;
	if(custno != null )  /* 수정할 데이터를 가져오기.(참고:custno 가 테이블 PK 값) */
			dto = dao.selectOne(Integer.parseInt(custno));
%>

 <header> <!-- header -->
 	<h2>홈쇼핑 회원관리 ver1.0</h2>
 </header> 
 <nav> <!-- nav -->
 	<!-- 반응형 웹페이지를 위해 메뉴는 목록 태그를 주로 사용합니다. 반응형 페이지 스타일은 레이아웃을 flexbox 사용해야 합니다. -->
 	<ul>
 		<li><a href="./MemberRegister.html">회원등록</a></li> 
		<li><a href="./MemberList.html">회원목록조회/수정</a></li> 
		<li><a href="./MemberSales.html">회원매출조회</a></li> 
		<li><a href="./Layout.html">홈으로.</a></li> 
 	</ul>
 </nav>
 <section>
 <h3>홈쇼핑 회원 정보 수정</h3>
 <!-- action 은 input 데이터를 전달받고 처리할 url 입니다.
 	  MemberSave.jsp를 만드세요. 그리고 전달받은 파라미터로 update 실행하도록 하세요.
 	  		ㄴ 이 파일에는 자바코드 만 작성하고 태그는 필요 없습니다. 
 	  MemberUpdate.jsp에서 보내는 파라미터 이름은 input 태그의 name 속성입니다.	
 	   -->
 <form action="UpdateSave.jsp" method="post">
 <!-- 이후 자바코드 작성 할 때 가독성,편리성을 위해 
 	  input name 이름은 DTO 클래스 변수명과 동일하게 하세요.
 	  UpdateSave.jsp 의 파라미터 저장 변수도 DTO와 동일하게 하세요.
  -->
 <table>
 	<tr>
 		<td><label for="lblNo">회원번호</label></td>
 		<!-- MemberList.jsp 에서 보낸 파라미터를 받아 custno 변수에 저장합니다. 그리고 value에서 출력하기. -->
 		<td><input type="number" id="lblNo" value="<%= custno %>"  
 				disabled="disabled">
 			<input type="hidden" name="custno" value="<%= custno %>">	
 		</td>
 	</tr>
 	<tr>
 		<td><label for="lblname">회원성명</label></td>
 		<td><input type="text" id="lblname" name="custname" value="<%= dto.getCustname() %>"></td>
 	</tr>
 	<tr>
 		<td><label for="lblphone">회원전화</label></td>
 		<td><input type="text" id="lblphone" name="phone" value="<%= dto.getPhone()%>"></td>
 	</tr>
 	<tr>
 		<td><label for="lbladdr">회원주소</label></td>
 		<td><input type="text" id="lbladdr" name="address" value="<%=dto.getAddress() %>"></td>
 	</tr>
 	<tr>
 		<td><label for="lblsign">가입일자</label></td>
 		<td><input type="text" id="lblsign" value="20230727" name="signupdate"
 			value="<%= dto.getJoindate() %>"
 			></td>
 	</tr>
 	<tr>
 		<td><label for="lblgrade">고객등급[A:VIP, B:일반, C:직원]</label></td>
 		<td><input  id="lblgrade" name="grade" value="<%= dto.getGrade() %>">
 		</td>
 	</tr>
 	<tr>
 		<td><label for="lblcode">도시코드</label></td>
 		<td><input id="lblcode" name="city" value="<%= dto.getCity() %>">
			</td>
 		</tr>
 		<tr>
 			<td colspan="2">
 				<button>수정</button>
 				<button type="button" 
 				onclick="location.href='MemberList.jsp'">조회</button>
 </table>
 </form>
 </section>
 

 <footer> <!-- footer -->
 	<h4>HRDKOREA Copyright &copy;2022 All rights reserved. Human Resources Development Service of Korea.</h4>
 </footer>

</body>
</html>