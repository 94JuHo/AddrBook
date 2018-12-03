<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*" %>
<%@ page import="jspbook.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="addrbook.css" type="text/css" media="screen" />
<script type="text/javascript">
	function check(id){
		pwd = prompt('수정/삭제 하려면 비밀번호를 넣으세요');
		document.location.href="addrbook_control.jsp?action=edit&id="+id+"&upasswd="+pwd;
	}
</script>
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="dataset" scope="request" class="java.util.ArrayList" />

<div align="center">

	<H2>주소록:주소록 목록</H2>
	<HR>
	
	<form>
		<a href="addrbook_form.jsp">주소록 등록</a><P>
		<table border=1>
			<tr>
				<th>번호</th><th>이 름</th><th>전화번호</th><th>회 사</th>
			</tr>
			<%
				for(AddrBook ab : (ArrayList<AddrBook>)dataset){
			%>
			<tr>
				<td><a href="javascript:check(<%=ab.getId() %>)"><%=ab.getId() %></a></td>
				<td><%=ab.getName() %></td>
				<td><%=ab.getTel() %></td>
				<td><%=ab.getCompany() %></td>
			</tr>
			<%
				}
			%>
		</table>
		</form>
	
</div>
</body>
</html>