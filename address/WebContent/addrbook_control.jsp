<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="jspbook.*" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("euc-kr"); %>

<jsp:useBean id="ad" class="jspbook.AddrBean"/>

<jsp:useBean id="addrbook" class="jspbook.AddrBook" />
<jsp:setProperty property="*" name="addrbook" />

<%
	String action = request.getParameter("action");

	if(action.equals("insert")){
		if(ad.insertDB(addrbook)){
			out.println("<script>alert(action)</script>");
			response.sendRedirect("addrbook_control.jsp?action=list");
		}
	}else if(action.equals("edit")){
		AddrBook abook = ad.getDB(addrbook.getId());
		
		if(!request.getParameter("upasswd").equals("1234")){
			out.println("<script>alert('��й�ȣ�� Ʋ�Ƚ��ϴ�!!!');history.go(-1);</script>");
		}else{
			request.setAttribute("address",abook);
			pageContext.forward("addrbook_edit_form.jsp");
		}
	}else if(action.equals("delete")){
		if(ad.deleteDB(addrbook.getId())){
			response.sendRedirect("addrbook_control.jsp?action=list");
		}else{
			throw new Exception("DB ���� ����");
		}
	}else if(action.equals("uodate")){
		if(ad.updateDB(addrbook)){
			response.sendRedirect("addrbook_control.jsp?action=list");
		}else{
			throw new Exception("DB ���ſ���");
		}
	}
	else
			out.println("<script>alert('action �Ķ���͸� Ȯ�����ּ���!!!')</script>");
	
	if(action.equals("list")){
		ArrayList<AddrBook> datalist = ad.getDBList();
		request.setAttribute("dataset",datalist);
		pageContext.forward("addrbook_list.jsp");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>