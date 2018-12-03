<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>주소 입력</title>
<link rel="stylesheet" href="addrbook.css" type="text/css">
<script type="text/javascript">
	function check(form){
		if(!form.name.value){
			alert("이름을 입력하세요.");
			form.name.focus();
			return;
		}
		if(!form.email.value){
			alert("이메일을 입력하세요.");
			form.email.focus();
			return;
		}
		if(!form.tel.value){
			alert("전화번호를 입력하세요.");
			form.tel.focus();
			return;
		}
		if(!form.company.value){
			alert("회사이름을 입력하세요.");
			form.company.focus();
			return;
		}
		form.submit();
	}
</script>
</head>
<body>
<div align=center>
<h2>주소록: 주소 입력</h2>
<hr>
[<a href=addrbook_control.jsp?action=list>주소록 목록으로</a>]<p>
<form name=form1 method=post action=addrbook_control.jsp>
	<input type=hidden name="action" value="insert">
	
	<table border=1>
		<tr>
			<th>이 름</th>
			<td>
				<input type=text name=name maxlength=15>
			</td>
		</tr>
		<tr>
			<th>email</th>
			<td>
				<input type=text name=email maxlength=50>
			</td>
		</tr>
		<tr>
			<th>전화번호</th>
			<td>
				<input type=text name=tel maxlength=20>
			</td>
		</tr>
		<tr>
			<th>회 사</th>
			<td>
				<input type=text name=company maxlength=20>
			</td>
		</tr>
		<tr>
			<td colspan=2 align=center>
				<input type=button value="저장" onClick="javascript:check(this.form)">
				<input type=button value="취소" onClick="javascript:reset()">
			</td>
		</tr>
	</table>
</form>
</div>
</body>
</html>
