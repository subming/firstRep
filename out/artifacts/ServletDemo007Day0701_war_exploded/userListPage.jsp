<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/6/9
  Time: 12:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%--0.必需加这句话--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form>
    <table>
        <tr>
            <td>
                <a href="${pageContext.request.contextPath}/addUser.jsp">添加</a>
            </td>
        </tr>
    </table>
</form>
<table border="1" cellspacing="0" cellpadding="0" width="80%">
    <tr>
        <td>id</td>
        <td>userName</td>
        <td>sex</td>
        <td>date</td>
        <td>address</td>
        <td>操作</td>
    </tr>
    <%--sbqSbq 是我在   req.setAttribute("sbqSbq",list);--%>

    <c:forEach var="li" items="${sbqSbq}">
        <tr>
            <td>
                    ${li.id}
            </td>
            <td> ${li.userName}</td>
            <td> ${li.sex}</td>
            <td> ${li.date}</td>
            <td> ${li.address}</td>
            <td>
                <a href="${pageContext.request.contextPath}/deleteUser.do?id=${li.id}">删除</a>
                <a href="${pageContext.request.contextPath}/findUserById.do?id=${li.id}">修改</a>
            </td>
        </tr>
    </c:forEach>
</table>
${info.totalPageCount}
<table>

    <tr>
        <td>
            总共 &nbsp; &nbsp;  ${info.totalPageCount}       &nbsp; &nbsp; &nbsp;  页
            当前第   &nbsp; &nbsp;  ${info.pageNo}       &nbsp; &nbsp; &nbsp;  页
            总共 &nbsp; &nbsp;  ${info.totalCount}       &nbsp; &nbsp; &nbsp;条数据

            <c:if test="${info.pageNo>1}">
                <a href="${pageContext.request.contextPath }/pageQueryUser.do?pageNo=1">首页</a>
                <a href="${pageContext.request.contextPath }/pageQueryUser.do?pageNo=${info.pageNo-1}">上一页</a>
            </c:if>

            <c:if test="${info.pageNo<info.totalPageCount}">
                <a href="${pageContext.request.contextPath }/pageQueryUser.do?pageNo=${info.pageNo+1}">下一页</a>
                <a href="${pageContext.request.contextPath }/pageQueryUser.do?pageNo=${info.totalPageCount}">末页</a>
            </c:if>
        </td>
    </tr>



    <%-- <tr>
         <td>
            总共 &nbsp; &nbsp;  ${info.totalPageCount}       &nbsp; &nbsp; &nbsp;  页
             当前第   &nbsp; &nbsp;  ${info.pageNo}       &nbsp; &nbsp; &nbsp;  页
             总共 &nbsp; &nbsp;  ${info.totalCount}       &nbsp; &nbsp; &nbsp;条数据
             <a href="${pageContext.request.contextPath }/pageQueryUser.do?pageNo=1">首页</a>
             <a href="${pageContext.request.contextPath }/pageQueryUser.do?pageNo=${info.pageNo-1}">上一页</a>
             <a href="${pageContext.request.contextPath }/pageQueryUser.do?pageNo=${info.pageNo+1}">下一页</a>
             <a href="${pageContext.request.contextPath }/pageQueryUser.do?pageNo=${info.totalPageCount}">末页</a>
         </td>
     </tr>--%>
</table>
</body>
</html>
