<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <title>后台-审核信息</title>
    <base href="<%=basePath%>">

</head>
<script type="text/javascript">
    function checkInfo(id) {
        $.post("info/check-info.do", {id: id},
            function (checkFlag) {
                var flag = JSON.parse(checkFlag);
                if (flag) {
                    alert("审核成功！");
                    window.location.reload();
                } else {
                    alert("审核失败！");
                }
            }
        );
    }

    function payforInfo(id) {
        $.post("info/payfor-info.do", {id: id},
            function (checkFlag) {
                var flag = JSON.parse(checkFlag);
                if (flag) {
                    alert("付费成功！");
                    window.location.reload();
                } else {
                    alert("付费失败！");
                }
            }
        );
    }
</script>
<body>
<center>
    <br>
    <table border="0" width="645" cellpadding="10" cellspacing="0" style="word-break:break-all">

        <tr height="30">
            <td style="text-indent:5px"><b>审核信息 [ID值：${info.id }]</b></td>
            <td colspan="2" align="right">
            </td>
        </tr>
        <tr height="30" bgcolor="#F9F9F9">
            <td colspan="3" align="center" style="text-indent:5px">信息详细内容</td>
        </tr>
        <tr height="30">
            <td width="25%" style="text-indent:10px">信息类别：</td>
            <td>【${info.infoType.typeName }】</td>
            <td>付费状态：&nbsp;&nbsp;
                <c:choose>
                    <c:when test="${info.payfor==1 }">
                        ★ 已付费
                    </c:when>
                    <c:otherwise>
                        ● 未付费
                    </c:otherwise>
                </c:choose></td>
        </tr>
        <tr height="30">
            <td style="text-indent:10px">发布时间：</td>
            <td>${info.infoDate }</td>
            <td>审核状态：&nbsp;&nbsp;
                <c:choose>
                    <c:when test="${info.state==1 }">
                        ★ 已审核
                    </c:when>
                    <c:otherwise>
                        ● 未审核
                    </c:otherwise>
                </c:choose></td>
        </tr>
        <tr height="30">
            <td style="text-indent:10px">信息标题：</td>
            <td colspan="2">${info.title }</td>
        </tr>
        <tr height="40" bgcolor="#F9F9F9">
            <td style="text-indent:10px">信息内容：</td>
            <td align="center">
                <input type="button" onclick="checkInfo('${info.id}')" value="√通过审核" ${info.state==1?"disabled":"" }/>
                <input type="button" onclick="payforInfo('${info.id}')" value="√付费" ${info.payfor==1?"disabled":"" }/>
            </td>
            <td align="center"></td>
        </tr>
        <tr height="5">
            <td></td>
        </tr>
        <tr>
            <td colspan="3" style="border:1px solid">
                <table border="0" width="630" cellspacing="0" cellpadding="10" style="word-break:break-all">
                    <tr height="130">
                        <td colspan="3" valign="top">${info.content }</td>
                    </tr>
                    <tr height="30" align="center">
                        <td>联系电话：${info.phone }</td>
                        <td>联系人：${info.linkMan }</td>
                        <td>Email：${info.email }</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="3"><a href="javascript:window.history.back(-1)">返回</a></td>
        </tr>
    </table>
</center>
</body>
</html>