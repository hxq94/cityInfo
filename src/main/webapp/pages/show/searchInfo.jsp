<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>查询-查看信息列表</title>
</head>
<body>
<center>
    <table border="0" width="670" cellspacing="0" cellpadding="0" style="margin-top:5px">
        <tr height="30">
            <td style="text-indent:5px" valign="bottom"><font color="#004790"><b>■查询结果</b></font></td>
        </tr>
        <tr height="1">
            <td></td>
        </tr>
        <tr>
            <td align="center" style="border:1px solid">
                <table border="0" width="100%" rules="rows" cellspacing="0">
                    <tr align="center" height="30" bgcolor="#F0F0F0">
                        <td width="6%"><b>序号</b></td>
                        <td width="13%"><b>信息类别</b></td>
                        <td width="5%"><b>ID值</b></td>
                        <td width="38%"><b>信息标题</b></td>
                        <td width="22%"><b>发布日期</b></td>
                        <td width="15%"><b>联系人</b></td>
                    </tr>
                    <c:choose>
                        <c:when test="${searchInfoList==null || searchInfoList.size()==0 }">
                            <tr height="80">
                                <td colspan="8" align="center">★★对不起，未找到符合条件的信息！★★</td>
                            </tr>
                        </c:when>
                        <c:otherwise>
                            <c:forEach var="searchInfo" items="${searchInfoList }" varStatus="status">
                                <c:choose>
                                    <c:when test="${status.index%2==1 }">
                                        <tr height="30" bgcolor="#F0F0F0">
                                    </c:when>
                                    <c:otherwise>
                                        <tr height="30">
                                    </c:otherwise>
                                </c:choose>
                                <td align="center"><b>${status.index+1 }</b></td>
                                <td align="center">${searchInfo.infoType.typeName }</td>
                                <td align="center">${searchInfo.id }</td>
                                <td align="center"><a
                                        href="/info/show-details-info.do?id=${searchInfo.id}">${searchInfo.title }</a>
                                </td>
                                <%--<td align="center">${searchInfo.infoDate }</td>--%>
                                <td align="center"><fmt:formatDate value="${searchInfo.infoDate }"
                                                                   pattern="yyyy-M-d HH:mm:ss"/></td>
                                <td align="center">${searchInfo.linkMan }</td>
                                </tr>
                            </c:forEach>
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