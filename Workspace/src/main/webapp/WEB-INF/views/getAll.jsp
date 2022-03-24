<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored = "false"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:if test="${not empty LIST}">
		<h1>WorkSpaces We have</h1>
		<ol>
			<c:forEach var="listValue" items="${LIST}">
				<li>${listValue.workspaceName}</li>
			</c:forEach>
		</ol>

	</c:if>
</body>
</html>