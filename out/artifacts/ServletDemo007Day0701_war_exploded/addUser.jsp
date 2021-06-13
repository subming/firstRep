<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/6/9
  Time: 13:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%--0.必需加这句话--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Title</title>
    <script src="${pageContext.request.contextPath}/js/jquery-3.3.1.js"></script>
    <%--<script>
        $(function () {
            alert("测试");
        });
    </script>--%>
    <script>
        function checkUserName(userName) {
            // alert("能进来吗？");
            $.ajax({
                type: "POST",// 提交方式
                url: "${pageContext.request.contextPath}/checkUserName.do",// 跳转的url
                data: "userName="+userName+"&location=Boston",// 传参数
                success: function(msg){// 后台返回值msg
                    alert( "Data Saved: " + msg );
                    var userNameErr = document.getElementById("userNameErr");
                    if (msg == 0) {
                        // alert(0);
                        userNameErr.innerHTML = "用户名已经注册不能再注册";
                    }else {
                        // alert("可以进来吗1");
                        userNameErr.innerHTML = "可以注册";
                    }
                }
            });
        }
        function checkAddress() {
            return false;
        }
        function checkPwd() {
            return false;
        }

        function cccc() {
            return checkAddress()&&checkPwd();
        }
    </script>
</head>
<body>
    <form action="${pageContext.request.contextPath}/updateUser.do" method="post" onsubmit="return cccc();">

        用户名：<input value="${user.userName}" name="userName" onchange="checkUserName(this.value);">
        <font id="userNameErr"></font><br>
        地址：<input value="${user.address}" name="address" onchange="checkAddress(this.value);">
        密码：<input type="password"name="pwd" value="${user.pwd}" onchange="checkPwd(this.value);">



        性别：<input type="radio" value="1" name="sex" <c:if test="${user.sex==1}">checked</c:if>>男
        <input type="radio" value="2" name="sex" <c:if test="${user.sex==2}">checked</c:if>>女
        <input type="radio" value="0" name="sex" <c:if test="${user.sex==0}">checked</c:if>>未知
        <input type="submit" value="提交">
    </form>
<br>
使用三目运算符
<c:set var="msg" value="11"></c:set>
${msg==11 ? 'add' : 'update'}
</body>
</html>
