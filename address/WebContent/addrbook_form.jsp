<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�ּ� �Է�</title>
<link rel="stylesheet" href="addrbook.css" type="text/css">
<script type="text/javascript">
	function check(form){
		if(!form.name.value){
			alert("�̸��� �Է��ϼ���.");
			form.name.focus();
			return;
		}
		if(!form.email.value){
			alert("�̸����� �Է��ϼ���.");
			form.email.focus();
			return;
		}
		if(!form.tel.value){
			alert("��ȭ��ȣ�� �Է��ϼ���.");
			form.tel.focus();
			return;
		}
		if(!form.company.value){
			alert("ȸ���̸��� �Է��ϼ���.");
			form.company.focus();
			return;
		}
		form.submit();
	}
</script>
</head>
<body>
<div align=center>
<h2>�ּҷ�: �ּ� �Է�</h2>
<hr>
[<a href=addrbook_control.jsp?action=list>�ּҷ� �������</a>]<p>
<form name=form1 method=post action=addrbook_control.jsp>
	<input type=hidden name="action" value="insert">
	
	<table border=1>
		<tr>
			<th>�� ��</th>
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
			<th>��ȭ��ȣ</th>
			<td>
				<input type=text name=tel maxlength=20>
			</td>
		</tr>
		<tr>
			<th>ȸ ��</th>
			<td>
				<input type=text name=company maxlength=20>
			</td>
		</tr>
		<tr>
			<td colspan=2 align=center>
				<input type=button value="����" onClick="javascript:check(this.form)">
				<input type=button value="���" onClick="javascript:reset()">
			</td>
		</tr>
	</table>
</form>
</div>
</body>
</html>
