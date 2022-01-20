<%@page import="java.sql.*"%>
<%@page import="novelefficient.Dbconnection"%>
<%@ page session="true" %>
<%
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    try{
       
    Connection con=Dbconnection.getConnection();
    PreparedStatement ps=con.prepareStatement("Update user set password='"+password+"' where email='"+email+"' ");

    
    

    int i=ps.executeUpdate();
    if(i>0)
    {
    response.sendRedirect("UserLogin.jsp?msg=Password changed_Successfully");
    }
    else 
    {
    response.sendRedirect("UserLogin.jsp?msg1=Failed to change password");
    }
    }

    catch(Exception e)
    {
    System.out.println("Error in emplogact"+e.getMessage());
    }
%>
