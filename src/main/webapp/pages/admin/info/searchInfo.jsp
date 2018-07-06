<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script type="text/javascript" src="js\jquery-easyui-1.4.1\jquery.min.js"></script>

<html>
<head>
    <title>后台-查看信息列表</title>
</head>
<script type="text/javascript">
    function deleteInfo(deleteId) {
        if (confirm("确认要删除这条信息吗?")) {
            $.post("info/delete-info.do", {delId: deleteId},
                function (delFlag) {
                    var flag = JSON.parse(delFlag);
                    if (flag) {
                        alert("删除成功！");
                        //document.getElementById("searchForm").submit();
                        window.location.reload();
                    } else {
                        alert("删除失败！");
                    }
                }
            );
        }
    }
</script>
<body>
<center>
    <table border="0" width="650" cellspacing="0" cellpadding="0">
        <c:choose>
            <c:when test="${searchInfoList==null || searchInfoList.size()==0 }">
                <tr height="1">
                    <td></td>
                </tr>
                <tr height="200" bgcolor="#F9F9F9">
                    <td colspan="8" align="center" style="border:1px solid"><font color="red"><b>★★对不起，未找到符合条件的信息！★★</b></font>
                    </td>
                </tr>
            </c:when>
            <c:otherwise>
                <tr height="30">
                    <td style="text-indent:8px">审核</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2" align="center" style="border:1px solid">
                        <table border="0" width="100%" cellspacing="0" cellpadding="0">
                            <tr align="center" height="30" bgcolor="#F0F0F0">
                                <td width="7%"><b>序号</b></td>
                                <td width="8%"><b>信息ID</b></td>
                                <td width="31%"><b>信息标题</b></td>
                                <td width="20%"><b>发布时间</b></td>
                                <td width="8%"><b>付费</b></td>
                                <td width="8%"><b>审核</b></td>
                                <td width="18%" colspan="3"><b>操作</b></td>
                            </tr>
                            <c:forEach var="searchInfo" items="${searchInfoList }" varStatus="status">
                                <tr height="30" bgcolor="#F9F9F9">
                                    <td align="center"><b>${status.index+1 }</b></td>
                                    <td style="text-indent:10px">${searchInfo.id }</td>
                                    <td style="text-indent:5px">${searchInfo.title }</td>
                                    <td><fmt:formatDate value="${searchInfo.infoDate }"
                                                        pattern="yyyy-M-d HH:mm:ss"/></td>
                                    <td align="center">
                                        <c:choose>
                                            <c:when test="${searchInfo.payfor==1 }"><font color="red">是</font></c:when>
                                            <c:otherwise><font color="blue">否</font></c:otherwise>
                                        </c:choose>
                                    </td>
                                    <td align="center">
                                        <c:choose>
                                            <c:when test="${searchInfo.state==1 }"><font color="red">是</font></c:when>
                                            <c:otherwise><font color="blue">否</font></c:otherwise>
                                        </c:choose>
                                    </td>
                                    <td align="center"><a href="/info/check-info.do?id=${searchInfo.id}">√审核</a></td>
                                    <td align="center"><a href="/info/check-info.do?id=${searchInfo.id}">√付费</a></td>
                                    <td align="center"><a href="javascript:deleteInfo('${searchInfo.id}')" onclick="">×删除</a>
                                    </td>
                                </tr>
                            </c:forEach>

                        </table>
                    </td>
                </tr>
                <tr height="8">
                    <td></td>
                </tr>
            </c:otherwise>
        </c:choose>

    </table>
</center>
</body>
</html>