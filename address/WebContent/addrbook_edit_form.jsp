<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="jspbook.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="addrbook.css" type="text/css" media="screen"/>

<script type="text/javascript">
	function delcheck(){
		result = confirm("정말로 삭제하시겠습니까?");
		
		if(result == true){
			document.form1.action.value = "delete";
			document.form1.submit();
		}else{
			return;
		}
	}
</script>
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="address" class="jspbook.AddrBook" scope="request"/>

<div align=center>
	<H2>주소록:주소 수정/삭제 </H2>
	<hr>
	
	[<a href="addrbook_control.jsp?action=list">주소록 목록으로</a>]<p>
	
	<form name=form1 method=post action=addrbook_control.jsp>
		<input type=hidden name="id" value="<%=address.getId() %>">
		<input type=hidden name="action" value="update">
		
		<table border=1>
			<tr>
				<th>이 름</th>
				<td><input type="text" name="name" value="<%=address.getName() %>"></td>
			</tr>
			<tr>
				<th>email</th>
				<td><input type="text" name="email" value="<%=address.getEmail() %>"></td>
			</tr>
			<tr>
				<th>전화번호</th>
				<td><input type="text" name="name" value="<%=address.getTel() %>"></td>
			</tr>
			<tr>
				<th>회 사</th>
				<td><input type="text" name="name" value="<%=address.getCompany() %>"></td>
			</tr>
			<tr>
				<td colspan=2 align=center>
					<input type=submit value="저장">
					<input type=reset value="취소">
					<input type=button value="삭제" onClick="delcheck()">
				</td>
			</tr>
		</table>
	</form>
</div>

</body>
</html>