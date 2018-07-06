<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<html>
<head>
    <title>管理员登录</title>
    <base href="<%=basePath%>">
    <link type="text/css" rel="stylesheet" href="css/style.css">
    <script type="text/javascript">
        function resetValue() {
            document.getElementById("userName").value = "";
            document.getElementById("password").value = "";
        }

        function checkForm() {
            var userName = document.getElementById("userName").value;
            var password = document.getElementById("password").value;
            if (userName == null || userName == "") {
                alert("请输入用户名！");
                return;
            } else if (password == null || password == "") {
                alert("请输入密码！");
                return;
            } else {
                document.getElementById("loginForm").submit();
            }
        }
    </script>
</head>
<body bgcolor="#E7ECEF">
<center>
    <form id="loginForm" action="/login.do" method="post">
        <table border="0" cellspacing="0" cellpadding="0" style="margin-top:130px">
            <tr>
                <td><img src="images/logon_top.gif"></td>
            </tr>
            <tr height="180">
                <td background="images/logon_middle.gif" align="center" valign="top">
                    <table border="0" width="90%" cellspacing="0" cellpadding="0">
                        <tr height="50">
                            <td colspan="2" align="center"><font color="red">${errorMsg }</font></td>
                        </tr>
                        <tr height="30">
                            <td align="right" width="40%">用户名：&nbsp;&nbsp;</td>
                            <td style="text-indent:5px"><input type="text" name="userName" id="userName"
                                                               value="${user.userName }" size="30"/></td>
                        </tr>
                        <tr height="30">
                            <td align="right">密&nbsp;&nbsp;码：&nbsp;&nbsp;</td>
                            <td style="text-indent:5px"><input type="password" name="password" id="password"
                                                               value="${user.password }" size="30"/></td>
                        </tr>
                        <tr height="60">
                            <td></td>
                            <td>
                                <input type="button" value="登录" onclick="checkForm()"/>
                                <input type="button" value="重置" onclick="resetValue()"/>
                                <a href="index.jsp">[返回首页]</a>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td><img src="images/logon_end.gif"></td>
            </tr>
        </table>
    </form>
</center>
</body>
</html>