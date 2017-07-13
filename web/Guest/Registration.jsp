<%-- 
    Document   : Registration
    Created on : Jul 11, 2017, 10:43:51 AM
    Author     : PCPL
--%>
<jsp:useBean class="dbpkg.conn" id="obj"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>REGISTRATION</title>
    </head>
    <body>
        <h1><center>REGISTRATION!</center></h1>
        <form>
            <table align="center" border="2">
                <tr>
                    <td>Name</td>
                    <td><input type="text" name="txt_name"></td>
                </tr>
                <tr>
                    <td>Gender</td>
                    <td><input type="radio" name="rd_gen" value="Male">Male<input type="radio" name="rd_gen" value="Female">Female</td>
                </tr>
                <tr>
                    <td>Contact</td>
                    <td><input type="text" name="txt_contact"></td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td><input type="text" name="txt_email"></td>
                </tr>
                <tr>
                    <td>Username</td>
                    <td><input type="text" name="txt_uname"></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="txt_pass"></td>
                </tr>
                <tr>
                    <td>Security Questions</td>
                    <td><select name="sel">
                    <option>Select.............</option>
                    <option>value what is your pet name ?</option></select></td>
                 
                </tr>
                <tr>
                    <td>Answers</td>
                    <td><input type="txt" name="txt_ans"></td>
                </tr>
                <tr>
                    <td><input type="submit" name="sub" value="Submit"></td>
                    <td><input type="submit" name="cancel" value="cancel"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
<%
    String name="";
    String gender="";
    String contact="";
    String email="";
    String uname="";
    String passwd="";
    String qus="";
    String ans="";
    boolean b;
    name=request.getParameter("txt_name");
    gender=request.getParameter("rd_gen");
    contact=request.getParameter("txt_contact");
    email=request.getParameter("txt_email");
    uname=request.getParameter("txt_uname");
    passwd=request.getParameter("txt_pass");
    qus=request.getParameter("sel");
    ans=request.getParameter("txt_ans");
    if(request.getParameter("sub")!=null)
    {
        String in="insert into tbl_registration(reg_name,reg_gender,reg_contact,reg_email,reg_uname,reg_passwd,reg_squs,reg_answer)values('"+name+"','"+gender+"','"+contact+"','"+email+"','"+uname+"','"+passwd+"','"+qus+"','"+ans+"')";
        b=obj.executeCommand(in);
        if(b)
        {
  response.sendRedirect("Login.jsp");
        }
        else
        {
             System.out.println(" not Sucess");
        }
                
    }
    
    %>

