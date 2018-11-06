<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	学号:${stu.id} <br>
	姓名:${stu.name} <br>
	性别:${stu.sex} <br>
	专业:${stu.professional} <br>
	爱好:<c:forEach items="${stu.hobby}" var="hobby"> ${hobby}</c:forEach> <br>
	简介:${stu.self} <br>
	照片:${stu.photo} <br>
</body>
</html>