<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>无标题文档</title>
</head>
<script language="javascript">
function checkEmpty(form){
for(i=0;i<form.length;i++){
if(form.elements[i].value==""){
alert("表单信息不能为空");
return false;
}
}
}
function quit() {
  if(confirm("没有要买的东西了吗？")){
    window.location.href="loginOut.jsp";
	}
  }
</script>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="com.wy.domain.AfficheForm"%>
<%@page import="com.wy.domain.GoodsForm"%>
<%@page import="com.wy.domain.MemberForm"%>
<%@page import="com.wy.domain.LinkForm"%>
<jsp:useBean id="affiche" scope="page" class="com.wy.dao.AfficheDao"/>
<jsp:useBean id="goods" scope="page" class="com.wy.dao.GoodsDao"/>
<jsp:useBean id="linkdao" scope="page" class="com.wy.dao.LinkDao"/>
<jsp:useBean id="countTime" scope="page" class="com.wy.tool.CountTime"/>
<%List afficheList=(List)affiche.selectAffiche();%>
<body>
<!--左侧01-->
	<%if(session.getAttribute("form")==null){%>		
	<table width="100%" height="138"  border="0" cellpadding="0" cellspacing="0" background="image/16.jpg">
      <tr>
        <td valign="top"><table width="100%"  border="0" cellpadding="0" cellspacing="0">
		 <tr>
            <td height="16">&nbsp;</td>
          </tr>
        </table>
        <form name="form" method="post" action="memberAction.do?action=1" onSubmit="return checkEmpty(form)">
          <table width="185" border="0" align="center">
            <tr>
              <td width="60" height="25">用户名</td>
              <td width="115"> <input name="name" type="text" size="17"></td>
            </tr>
            <tr>
              <td height="25">密&nbsp;&nbsp;码</td>
              <td><input name="password" type="password" size="17"></td>
            </tr>
			 <tr>
              <td height="26"><input type="image" class="input1"  src="image/fg-land.gif" width="51" height="20"></td>
              <td height="26">  &nbsp;&nbsp;<a href="fg-memberRegister.jsp">注册</a>&nbsp;&nbsp;<a href="fg-One.jsp">找回密码？</a></td>
			 </tr>	  
          </table>
		  </form>
		  </td>
      </tr>
    </table>
	<%}else{
	   MemberForm form=(MemberForm)session.getAttribute("form");
	%>

	<table width="100%" height="138"  border="0" cellpadding="0" cellspacing="0" background="image/16.jpg">
      <tr>
        <td valign="top"><table width="100%"  border="0" cellpadding="0" cellspacing="0">
		 <tr>
            <td height="30">&nbsp;</td>
          </tr>
        </table>
       
          <table width="167" border="0" align="center">
            <tr>
              <td width="161" height="25"><font color="#FB6801"><%=form.getName()%>,</font>欢迎回来</td>
              </tr>
            <tr>
              <td height="25"><%=countTime.currentlyTime()%></td>
              </tr>
			 
			  <tr>
              <td height="20" align="right" valign="middle"><a href="javascript:quit()">安全退出</a></td>
              </tr>	
          </table>
	  </td>
     </tr>
    </table>
		<%}%>
	
	    
			  






















</body>
</html>
