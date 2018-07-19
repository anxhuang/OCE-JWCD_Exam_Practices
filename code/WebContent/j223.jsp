<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Insert title here</title>
</head>
<body>

	<%@ include file="banner.jsp" %>
	
	<div align="center">
		<h2>JSP/EL , j223.jsp</h2>
		
		<h3>
			"7"+19=${"7"+19 }<br>  <%-- !!!NOTICE!!! EL will not casting the number to string  --%>
			7-19=${7-"19" }<br>
			"7"*"19"=${"7"*"19" }<br>
			7/19=${7/19 }<br><br>
			
			<% request.setAttribute("2018", 719); %>
			
			2018: ${2018 }<br> <%-- XX --%>
			2018: ${"2018" }<br> <%-- XX --%>
			2018: ${requestScope["2018"] }<br><br> <%-- implicit object --%>
			
			<%
				//page > request > session
				//pageContext.setAttribute("mail", "page@gmail.com");
				//request.setAttribute("mail", "request@gmail.com");
				//session.setAttribute("mail", "session@gmail.com");
				application.setAttribute("mail", "application@gmail.com");
			%>
			
			Mail: ${mail }<br>
			
		</h3>
	</div>
	
	<%@ include file="footer.jsp" %>

</body>
</html>