<%@ page contentType="text/html;charset=utf-8" isErrorPage="true"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*"%>

<%
	String sStatus =request.getAttribute("javax.servlet.error.status_code").toString();
%>

<!DOCTYPE html>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<head>
<title><%=sStatus %></title>
</head>
<body>
	<div style="margin: auto; text-align: center;">
		<div style="margin: auto; width: 360px;">
			<img src="/zzero/web/lib/system/404.jpg" />
			<div style="margin: 20px; text-algin: left;">

				<h3>您要查找的页面暂时不存在，谢谢！</h3>
			</div>
		</div>
	</div>
	<div style="display: none;">



		<%
			if (sStatus.equals("500")) {
		%>

		An exception was thrown: <b><%=exception.getClass()%>:<%=exception.getMessage()%></b>

		<%
			Enumeration<String> e = request.getHeaderNames();
				String key;
				while (e.hasMoreElements()) {
					key = e.nextElement();
				}
				e = request.getAttributeNames();
				while (e.hasMoreElements()) {
					key = e.nextElement();
				}
				e = request.getParameterNames();
				while (e.hasMoreElements()) {
					key = e.nextElement();
				}
		%>
		<%=request
						.getAttribute("javax.servlet.forward.request_uri")%>
		<br>
		<%=request
						.getAttribute("javax.servlet.forward.servlet_path")%>
		<p>With the following stack trace:</p>

		<%
			exception.printStackTrace();
				ByteArrayOutputStream ostr = new ByteArrayOutputStream();
				exception.printStackTrace(new PrintStream(ostr));
				out.print(ostr);
		%>
		<%
			}
		%>
	</div>
</body>
</html>


