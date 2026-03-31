<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Success</title>
</head>
<body>
	<h1>File uploaded Successfully</h1>
	<iframe src="<c:url value='/resources/files/${filename}' />"
		width="100%" height="500px"> </iframe>
</body>
</html>