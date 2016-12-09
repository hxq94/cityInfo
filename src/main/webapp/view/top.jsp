<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=gbk">
  <title>页眉</title>
</head>
<body>
    <center>
        <table border="0" width="100%" cellspacing="0" cellpadding="0">

            <tr height="20">
                <td style="text-indent:10px" valign="bottom">
                    <a href="/pre/add-info.do" style="color:gray">[发布信息]</a>
                    <a href="/isLogin.do" style="color:gray">[进入后台]</a>
                </td>
                <td align="right" valign="bottom">
                    <a href="#" style="color:gray" onclick="">设为主页 -</a>
                    <a href="" style="color:gray">收藏本页 -</a>
                    <a href="" style="color:gray">联系我们</a>
                    &nbsp;
                </td>
            </tr>

            <tr height="56">
                <td align="center" width="220" background="images/logo.gif"></td>
                <td align="right" background="images/menu.gif">
                    <c:choose>
                           <c:when test="${infoTypeList==null || infoTypeList.size()==0}">
                               没有信息类别可以显示！！
                           </c:when>
                            <c:otherwise>
                        <table border="0" width="600">
                            <tr align="center">
                               	    <td width="100"><font><a href="" style="color:white">首&nbsp;&nbsp;页</a></font></td>
                                <c:forEach var="infoType" items="${infoTypeList}" varStatus="status">
                                    <td width="100"><a href="/info/get-search-info.do?typeId=${infoType.id}" style="color:white">${infoType.typeName}</a></td>
                                    <c:if test="${status.index==4}">
                                        </tr>
                                        <tr align="center">
                                    </c:if>
                                </c:forEach>
                        </table>
                            </c:otherwise>
                    </c:choose>
                </td>
            </tr>
        </table>
        <table border="0" width="100%" height="90" cellspacing="0" cellpadding="0" style="margin-top:1px">
            <tr><td align="center"><a href="" target="_blank"><img src="images/pcard1.jpg"></a></td></tr>
        </table>
    </center>
</body>
</html>