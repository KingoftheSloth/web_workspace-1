<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홈쇼핑 회원 등록</title>
	<link rel="stylesheet" href="./Layout.css?v=3">
	<link rel="stylesheet" href="./MemberRegister.css?v=3">
</head>
<body>
<!--     -->
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
 <h2>홈쇼핑 회원 등록</h2>
 <form action="RegisterSave22.jsp" method="post">
 <table>
 	<tr>
 		<td><label for="lblNo">회원번호(자동생성)</label></td>
 		<td><input type="number" id="lblNo" value="" 
 			name="custno"></td>
 	</tr>
 	<tr>
 		<td><label for="lblname">회원성명</label></td>
 		<td><input type="text" id="lblname" name="custname"></td>
 	</tr>
 	<tr>
 		<td><label for="lblphone">회원전화</label></td>
 		<td><input type="text" id="lblphone" name="phone"></td>
 	</tr>
 	<tr>
 		<td><label for="lbladdr">회원주소</label></td>
 		<td><input type="text" id="lbladdr" name="address"></td>
 	</tr>
 	<tr>
 		<td><label for="lblsign">가입일자</label></td>
 		<td><input type="text" 
 		id="lblsign" value="" name="signupdate" disabled></td>
 	</tr>
 	<tr>
 		<td><label for="lblgrade">고객등급[A:VIP, B:일반, C:직원]</label></td>
 		<td><input  id="lblgrade" name="grade" >
 		</td>
 	</tr>
 	<tr>
 		<td><label for="lblcode">도시코드</label></td>
 		<td><input id="lblcode" name="city">
			</td>
 		</tr>
 		<tr>
 			<td colspan="2">
 				<button onclick="alert('등록되었습니다.')">등록</button>
 				<button type="button" onclick="location.href='MemberList.html'">조회</button>
 </table>
 </form>
 </section>
 

 <footer> <!-- footer -->
 	<h4>HRDKOREA Copyright &copy;2022 All rights reserved. Human Resources Development Service of Korea.</h4>
 </footer>

</body>
</html>