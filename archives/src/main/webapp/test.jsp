<%--
  Created by IntelliJ IDEA.
  User: YangGang
  Date: 2018/10/30
  Time: 9:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html" pageEncoding="GBK"%>
<html>
<head>
    <title>��½ҳ��</title>
    <script>
        window.onload=function(){
            function reloadImage() {
            document.getElementById('identity').src = 'image?ts=' + new Date().getTime();
        } }
    </script>
</head>
<body>
<center>
    <%
        // ������
        request.setCharacterEncoding("GBK");
    %>
    <h1>
        ��½����
    </h1>
    <hr>
    <%=request.getAttribute("info") != null ? request.getAttribute("info") : ""%>
    <form action="index" method="post">
        �û�ID��
        <input type="text" name="mid">
        <br>
        ��  �룺
        <input type="password" name="password">
        <br>
        ��֤�룺
        <input type="text" name="code"  maxlength="5" size="5">
        <img src="image" id="identity" onclick="reloadImage()" title="�����壬�����һ��">
        <br>
        <input type="submit" value="��½">
        <input type="reset" value="����">
    </form>
</center>
</body>
</html>
