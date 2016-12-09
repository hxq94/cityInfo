<%@ page language="java" contentType="text/html; charset=utf-8"%>
<script type="text/javascript" src="js\jquery-easyui-1.4.1\jquery.min.js"></script>
<html>
<head>
  <title>侧栏</title>
</head>
<style>
    *{font-size:9px;}
    option{font-size:13px;}
</style>
<script>
    $(function () {

        /*回显*/
        $("#keyword").val( '${info.keyword}');
        $("#condition").val('${info.condition}');
        if('equal'=='${info.searchType}'){
            $("#equal").attr("checked",true);
        }else{
            $("#like").attr("checked",true);
        }
    })

    function checkForm(){
        var keyword=$("#keyword").val();
        var condition=$("#condition").val();
        if(keyword==null || keyword==""){
            alert("请输入关键字！");
            return;
        }else if(condition==null || condition==""){
            alert("请选择搜索条件！");
            return;
        }else{
            $("#searchForm").submit();
        }
    }


</script>
<body>
    <center>
        <table border="0" width="225" height="100%" cellspacing="0" cellpadding="0">
            <tr height="30"><td style="text-indent:5px" valign="bottom"><font color="#004790"><b>■日历</b></font></td></tr>
            <tr height="1"><td></td></tr>
            <tr height="215">
                <td valign="top" background="images/leftD.jpg"><jsp:include page="/pages/calendar.jsp"/></td>
            </tr>
            <tr height="1"><td></td></tr>
            <tr height="30"><td style="text-indent:5px" valign="bottom"><font color="#004790"><b>■信息快速搜索</b></font></td></tr>
            <tr height="1"><td></td></tr>
            <tr height="103">
                <td align="center" valign="top" background="images/leftS.jpg">
                    <form action="/info/get-search-info.do" method="get" id="searchForm">
                        <table border="0" width="99%" height="100%" cellspacing="0">
                            <tr height="10"><td colspan="3"></td></tr>
                            <tr>
                                <td align="right" width="70">关 键 字：</td>
                                <td colspan="2" width="200"><input type="text" id="keyword" name="keyword"/></td>
                            </tr>
                            <tr>
                                <td align="right">条&nbsp;&nbsp;件：</td>
                                <td>
                                    <select id="condition" name="condition">
                                        <option value="">请选择...</option>
                                        <option value="email">E-mail地址</option>
                                        <option value="content">信息内容</option>
                                        <option value="title">信息标题</option>
                                        <option value="linkman">联系人</option>
                                        <option value="phone">联系电话</option>
                                    </select>
                                </td>
                                <td align="center"><input type="button" value="搜索" onclick="checkForm()"/></td>
                            </tr>
                            <tr>
                                <td align="right" >搜索类型：</td>
                                <td colspan="2">
                                    <input type="radio" name="searchType" id="equal" value="equal" />全字匹配
                                    <input type="radio" checked="checked" name="searchType" id="like" value="like"/>模糊搜索
                                </td>
                            </tr>
                            <tr height="10"><td colspan="3"></td></tr>
                        </table>
                    </form>
                </td>
            </tr>
            <tr><td></td></tr>
        </table>                
    </center>
</body>
<script>

</script>
</html>