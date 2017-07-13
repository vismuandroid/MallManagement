<%-- 
    Document   : Login
    Created on : Jul 11, 2017, 10:44:37 AM
    Author     : PCPL
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="dbpkg.conn" id="obj"></jsp:useBean>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOGIN</title>
    </head>
    <body>
    <center><h1>Login!</h1></center>
        <form>
           <table align="center" border="2">
                <tr>
                    <td>user name</td>
                    <td><input type="text" name="txt_uname"></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="txt_passwd"></td>
                </tr>
                 <tr>
                   <td><input type="submit" name="login" value="Login"></td>
                    <td><input type="submit" name="cancel" value="cancel"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
<%
    String uname="";
    String passwd="";
    uname=request.getParameter("txt_uname");
    passwd=request.getParameter("txt_passwd");
    if(request.getParameter("login")!=null)
    {
    String sel="select * from tbl_registration where reg_uname='"+uname+"' and reg_passwd='"+passwd+"'";
    ResultSet rs=obj.selectCommand(sel);
    if(rs.next())
    {
        response.sendRedirect("Registration.jsp");
    }
    }
    %>
