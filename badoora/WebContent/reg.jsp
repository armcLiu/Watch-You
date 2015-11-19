<%--
    Document   : register
    Created on : Nov 17, 2015, 8:03:20 PM
    Author     : kursi
--%>
<%@page import="java.net.URL"%>
<%@page import="com.mysql.jdbc.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.mysql.jdbc.Connection"%>
<%@page import="java.sql.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>REGISTER</title>
    </head>
    <body onload="displayResults()">
        <h1>SIGN UP</h1>
        <br><br>
    <%! public class Enterdata{
        String url = "jdbc:mysql://localhost:3306/watch";
        String username = "root";
        String password = "1234";
            
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String Driver = "com.mysql.jdbc.Driver";
        public Enterdata(){
        try {
        Class.forName(Driver);
        con = DriverManager.getConnection(url,username,password);
        ps = con.prepareStatement("INSERT INTO signup(name, email, mobile, password)" + " VALUES (?, ?, ?, ?)");
        }
        catch(Exception e){
        e.printStackTrace();
        }
        }

    public int setActor(String name, String email, String mobile, String password){
        
        int result = 0;
        try{
        ps.setString(1, name);
        ps.setString(2, email);
        ps.setString(3, mobile);
        ps.setString(4, password);
        result = ps.executeUpdate();
        }  
        catch(SQLException ex)
        {
        ex.printStackTrace();
        }       
            return result;
        }
       }
    %>
    <%
        int result = 0;
        
        String name = new String();
        String email = new String();
        String mobile = new String();
        String password = new String();
        
        if(request.getParameter("name") != null)
        {
            name = request.getParameter("name");
        }
        if(request.getParameter("email") != null)
        {
            email = request.getParameter("email");
        }
        if(request.getParameter("mobile") != null)
        {
            mobile = request.getParameter("mobile");
        }
        if(request.getParameter("password") != null)
        {
            password = request.getParameter("password");
        }
        
        Enterdata reg = new Enterdata();
        result = reg.setActor(name, email, mobile, password);
    %>
    
    <form name="myForm" action="register.jsp" method="POST">
        <table width="1" cellspacing="2" cellpadding="4">
            <tbody>
                <tr>
                    <td>Name:</td>
                    <td><input type="text" name="name" value="" size="27" /></td>
                </tr>
                <tr>
                    <td>Email:</td>
                    <td><input type="text" name="email" value="" size="27" /></td>
                </tr>
                <tr>
                    <td>Mobile:</td>
                    <td><input type="text" name="mobile" value="" size="27" /></td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td><input type="text" name="password" value="" size="27" /></td>
                </tr>
                <tr>
                    <td>Confirm Password:</td>
                    <td><input type="text" name="cpassword" value="" size="27" /></td>
                </tr>
            </tbody>
        </table>    
        <input type="hidden" name="hidden" value="<%= result %>" />
                    <input type="submit" value="register" name="Register" />
                    <a href="loginpage.jsp">Already have an account</a>
        </form>
    <script lang="JavaScript">
     <!--
     function displayResults()
     {
         if(document.myForm.hidden.value == 1)
         {
             alert("Data Inserted");
         }
     }
    </script>
    </body>
</html>
