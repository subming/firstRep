<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/6/11
  Time: 20:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<script>
    // 定义json格式
    var users = {"id":"1","userName":"张三","pwd":"123456"};
    console.log(users.id);
    console.log(users.pwd);
    console.log(users["userName"]);

    var userss = [
        {"id":"1","userName":"张三1","pwd":"123456"},
        {"id":"2","userName":"张三2","pwd":"123456"},
        {"id":"3","userName":"张三3","pwd":"123456"}
    ];

    console.log(userss[0].userName);
    console.log(userss[1].pwd);
    console.log(userss[2].id);

    console.log("---------------");
    for (var i in userss) {
        console.log(userss[i].id);
        console.log(userss[i].pwd);
        console.log(userss[i].userName);

    }
</script>
<body>

</body>
</html>
