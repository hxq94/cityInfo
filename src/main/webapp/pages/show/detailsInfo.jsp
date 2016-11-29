<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
  <title>都市信息网-查看详细内容</title>
  <base href="<%=basePath%>">
  <link type="text/css" rel="stylesheet" href="<s2:url value='css/style.css'/>">
</head>
<body>
    <center>
        <table width="670" border="0" cellspacing="0" cellpadding="0" style="margin-top:5px">
            <tr height="30"><td style="text-indent:5px" valign="bottom"><font color="#004790"><b>■查看详细信息</b></font></td></tr>
            <tr height="1"><td></td></tr>
            <tr bgcolor="#FAFCF5">
                <td style="border:1px solid">
                    <table border="0" width="100%" cellspacing="0" cellpadding="2">
                    	<c:choose>
                    		<c:when test="${info==null }">
                    			<tr height="100"><td align="center" colspan="2" style="border:1px solid">★★★ 查看信息详细内容出错！★★★</td></tr>
                    		</c:when>
                    		<c:otherwise>
                    			<tr height="40">
                                <td width="20%" style="text-indent:20px">信息类别：</td>
                                <td>${info.infoType.typeName }</td>
                            </tr>
                            <tr height="40">
                                <td style="text-indent:20px">发布时间：</td>
                              <%--  <td>${info.infoDate }</td>--%>
                                <td><fmt:formatDate value="${info.infoDate }" pattern="yyyy-M-d HH:mm:ss" /></td>
                            </tr>
                            <tr height="40">
                                <td style="text-indent:20px">信息标题：</td>
                                <td>${info.title }</td>
                            </tr>
                            <tr height="40"><td colspan="2" style="text-indent:20px">信息内容：</td></tr>
                            <tr>
                                <td colspan="2" align="center">
                                    <table border="1" width="630" cellspacing="0" cellpadding="10" rules="none" frame="below" style="word-break:break-all" bordercolor="lightgrey" bordercolorlight="lightgrey" bordercolordark="white">
                                        <tr height="200" bgcolor="white"><td colspan="3" valign="top" style="border:1px solid">${info.content }</td></tr>
                                        <tr height="20" align="center">
                                            <td>联系电话：${info.phone }</td>
                                            <td>联系人：${info.linkMan }</td>
                                            <td>E-mail：${info.email }</td>
                                        </tr>
                                    </table>                      
                                </td>
                            </tr>
                            <tr height="63"><td align="center" colspan="2"><a href="javascript:window.history.back(-1)">返回</a></td></tr>                              
                    		</c:otherwise>
                    	</c:choose>
                    </table>
                </td>
            </tr>
        </table>
        <br>
    </center>
</body>
</html>