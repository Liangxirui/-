<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*"%>
 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
	<head>
		<meta charset="utf-8" />
		<title></title>
	</head>
	<body>
				
		<table border="1">
			
			<tr>
				<th>用户ID</th>
				<th>用户名</th>
				<th>昵称</th>
				<th>密码</th>
				<th>性别</th>
				<th>邮箱</th>
				<th>手机号</th>
				<th colspan="3">操作</th>
			</tr>
			
			<c:forEach items="${ls}" var="d" varStatus="st">
				<tr>
					<td>${d.u_id}</td>
					<td>${d.u_name}</td>
					<td>${d.u_nickname}</td>
					<td>${d.u_password}</td>
					<td>${d.u_sex}</td>
					<td>${d.u_email}</td>
					<td>${d.u_phone}</td>
					<td>
						<a href="get?id=${d.u_id}">详情</a>
					</td>
					<td>
						<a href="editgo?id=${d.u_id}">修改</a>
					</td>
					<td>
						<a href="delete?id=${d.u_id}">删除</a>
					</td>
				</tr>
			</c:forEach>			
			
			<tr>
				<td colspan="9">
					<a href="addgo">添加</a>
				</td>
			</tr>
			
		</table>
			
	</body>
</html>
