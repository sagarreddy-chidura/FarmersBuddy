<%@page import="java.sql.*"%>
<%@page import="novelefficient.Dbconnection"%>
<%@ page session="true" %>
    <%
        
    int id=Integer.parseInt(request.getParameter("id"));   
        
    String solution = request.getParameter("solution");
    
    try{
      
    Connection con=Dbconnection.getConnection();
    PreparedStatement ps=con.prepareStatement("update userquery set status = 'Sent', solution = '"+solution+"' where id="+id+"");

    
    int i=ps.executeUpdate();
    if(i>0)
    {
    response.sendRedirect("admin_query.jsp?msg=Success");
    }
    else{
    response.sendRedirect("admin_query.jsp?msg1=Failed");    
    }
    %>
    <%
    }

    catch(Exception e)
    {
            out.println(e.getMessage());
    }
    %>