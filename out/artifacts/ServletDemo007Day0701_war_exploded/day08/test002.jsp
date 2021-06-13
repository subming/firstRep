<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/6/11
  Time: 20:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script>
        // 这就是字符串
        var jsonstr = '{"id":"1","userName":"张三","pwd":"123456"}';
        console.log(typeof jsonstr);
        var json = {"id":"1","userName":"张三","pwd":"123456"};
        console.log(typeof json);

        // 将字符串的json数据转为 json
        var strToJson = JSON.parse(jsonstr);
        console.log(typeof strToJson);
        // 将json数据转为字符串
        var jsonToStr = JSON.stringify(json);
        console.log(typeof jsonToStr);
    </script>
</head>
<body>

</body>
</html>
