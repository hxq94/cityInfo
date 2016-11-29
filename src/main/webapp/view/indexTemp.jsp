<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>都市供求信息网</title>
    <base href="<%=basePath%>">
    <link type="text/css" rel="stylesheet" href="css/style.css">
</head>
<body background="images/back.gif">
<div align="center">
    <table border="0" width="920" cellspacing="0" cellpadding="0" bgcolor="white">
        <tr><td colspan="2"><jsp:include page="top.jsp"/></td></tr>
        <tr>
            <td width="230" valign="top" align="center"><jsp:include page="left.jsp"/></td>
            <c:choose>
                <c:when test="${mainPage==null || mainPage == ''}">
                    <td width="690" height="400" align="center" valign="top" bgcolor="#FFFFFF"><jsp:include page="default.jsp"/></td>
                </c:when>
                <c:otherwise>
                    <td width="690" height="400" align="center" valign="top" bgcolor="#FFFFFF"><jsp:include page="${mainPage}"/></td>
                </c:otherwise>
            </c:choose>

        </tr>
        <tr><td colspan="2"><%@ include file="end.jsp" %></td></tr>
    </table>
</div>
</body>
</html>