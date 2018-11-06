<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>列表</title>
</head>
<style>
table.stu-info{border-collapse:collapse;border-color:#666;border-width:1px;color:#333;font-size:11px;font-family:verdana,arial,sans-serif}
table.stu-info th{padding:8px;border:1px solid #666;background-color:#dedede}
table.stu-info td{padding:8px;border:1px solid #666;background-color:#fff}
</style>
<body>
	<table class="stu-info">
		<thead>
			<tr>
				<th>编号</th>
				<th>学号</th>
				<th>姓名</th>
				<th>性别</th>
				<th>专业</th>
				<th>爱好</th>
				<th width="250px;">简介</th>
				<th>照片</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list}" var="item" varStatus="index">
				<tr>
					<td>${index.index}</td>
					<td>${item.id}</td>
					<td>${item.name}</td>
					<td>${item.sex}</td>
					<td>${item.professional}</td>
					<td><c:forEach items="${item.hobby}" var="hobby">${hobby} </c:forEach>
					</td>
					<td width="250px;">${item.self}</td>
					<td>${item.photo}</td>
					<td><a href='student?action=more&id=${item.id}'>更多</a> <a
						href='student?action=delete&id=${item.id}'>删除</a> <a
						href='student?action=edit&id=' ${item.id}>编辑</a></td>
				</tr>
			</c:forEach>
		</table>
</body>
</html>