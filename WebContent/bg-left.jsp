<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
  <script Language="JavaScript">
 function quit() {
  if(confirm("ȷ��Ҫ�˳���̨��")){
    window.location.href="loginOut.jsp";
	}
  }
 </script>
 
 
 
 
 <%com.wy.domain.ManagerForm manager=(com.wy.domain.ManagerForm)session.getAttribute("manager"); %>
<table width="35" height="22" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td><img src="image/13.jpg" width="170" height="45"></td>
      </tr>
    </table>
      <table width="170" height="46" border="0" cellpadding="0" cellspacing="0" background="image/14.jpg">
        <tr>
          <td><table width="118" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
              <td width="118" height="17" align="center" valign="bottom"><div align="left"><a href="goodsAction.do?action=0" class="a3">��Ʒ����</a></div></td>
            </tr>
            
          </table></td>
        </tr>
      </table>
      <table width="170" height="46" border="0" cellpadding="0" cellspacing="0" background="image/14.jpg">
        <tr>
          <td><table width="118" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td width="109" height="17" align="center" valign="bottom"><div align="left"><a href="memberAction.do?action=2" class="a3">��Ա����</a></div></td>
              </tr>
             
          </table></td>
        </tr>
      </table>
      
      <%if(manager.getSigh()==1){%>        
      <table width="170" height="46" border="0" cellpadding="0" cellspacing="0" background="image/14.jpg">
        <tr>
          <td><div align="left">
            <table width="118" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="127" height="17" align="center" valign="bottom"><div align="left"><a href="managerAction.do?action=1" class="a3">��̨����Ա����</a></div></td>
                </tr>
               
             </table>
          </div></td>
        </tr>
      </table>
      <%}else{%>
       <table width="170" height="46" border="0" cellpadding="0" cellspacing="0" background="image/14.jpg">
        <tr>
          <td><div align="left">
            <table width="118" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="127" height="17" align="center" valign="bottom"><div align="left"><a href="bg-managerUpdatePassword.jsp" class="a3">�޸�����</a></div></td>
                </tr>
                
             </table>
          </div></td>
        </tr>
      </table>      
      <%}%>
      
      
      
      
      
      
      
      <table width="170" height="46" border="0" cellpadding="0" cellspacing="0" background="image/14.jpg">
        <tr>
          <td><table width="118" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td width="127" height="17" align="center" valign="bottom"><div align="left"><a href="orderAction.do?action=0" class="a3">��������</a></div></td>
              </tr>
             
          </table></td>
        </tr>
      </table>
      <table width="170" height="46" border="0" cellpadding="0" cellspacing="0" background="image/14.jpg">
        <tr>
          <td><table width="118" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td width="127" height="17" align="center" valign="bottom"><div align="left"><a href="afficheAction.do?action=0" class="a3">��������</a></div></td>
              </tr>
              
          </table></td>
        </tr>
      </table>
      <table width="170" height="46" border="0" cellpadding="0" cellspacing="0" background="image/14.jpg">
        <tr>
          <td><table width="118" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td width="127" height="17" align="center" valign="bottom"><div align="left"><a href="linkAction.do?action=0" class="a3">��������</a></div></td>
              </tr>
              
          </table></td>
        </tr>
      </table>
      <table width="170" height="47" border="0" cellpadding="0" cellspacing="0" background="image/14.jpg">
        <tr>
          <td><table width="118" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td width="127" height="17" align="center" valign="bottom"><div align="left"><a href="javascript:quit()" class="a3">��ȫ�˳�</a></div></td>
              </tr>
              
          </table></td>
        </tr>
      </table>
      <table width="37" border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td><img src="image/bg_left04.jpg" width="170" height="68"></td>
        </tr>
      </table>