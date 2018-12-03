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
		pwd = prompt('����/���� �Ϸ��� ��й�ȣ�� ��������');
		document.location.href="addrbook_control.jsp?action=edit&id="+id+"&upasswd="+pwd;
	}
</script>
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="dataset" scope="request" class="java.util.ArrayList" />

<div align="center">

	<H2>�ּҷ�:�ּҷ� ���</H2>
	<HR>
	
	<form>
		<a href="addrbook_form.jsp">�ּҷ� ���</a><P>
		<table border=1>
			<tr>
				<th>��ȣ</th><th>�� ��</th><th>��ȭ��ȣ</th><th>ȸ ��</th>
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