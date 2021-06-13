<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/6/9
  Time: 13:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    建议什么都不要写，看能不能进来
进来了在写代码


    <form action="${pageContext.request.contextPath}/updateUser.do" method="post">
        请所有同学注意，一定要加id
        id值为：${user.id} 用户名为：${user.userName}
        <br>
        <input value="${user.id}" name="id" type="hidden">
        用户名：<input value="${user.userName}" name="userName" >
        地址：<input value="${user.address}" name="address">



        性别：<input type="radio" value="1" name="sex" <c:if test="${user.sex==1}">checked</c:if>>男
        <input type="radio" value="2" name="sex" <c:if test="${user.sex==2}">checked</c:if>>女
        <input type="radio" value="0" name="sex" <c:if test="${user.sex==0}">checked</c:if>>未知
        <input type="submit" value="提交">
    </form>
</body>
</html>
