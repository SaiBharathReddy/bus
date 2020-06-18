

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<!DOCTYPE html>
<html>
    
    <body>
        <% 
            out.print("bh");
String uname=request.getParameter("uname"); 
String password=request.getParameter("pass");

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/busbooking","root","root");
PreparedStatement ps=con.prepareStatement("select uname,passwrd from usersignup where uname=? and passwrd=?;");

ps.setString(1,uname);

ps.setString(2,password);
ResultSet rs=ps.executeQuery();
if(rs.next())
{
    response.sendRedirect("u.html");
}
else
{
    response.sendRedirect("index.html");
}

%>

    </body>
</html>
