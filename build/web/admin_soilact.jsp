<%@page import="java.sql.*"%>
<%@page import="novelefficient.Dbconnection"%>
<%@ page session="true" %>
    <%
        
     int id=0;   
        
    String season = request.getParameter("season");
    String seasontime = request.getParameter("seasontime"); 
    String soil = request.getParameter("soil");
    String crops = request.getParameter("crops");
    
    try{
      
    Connection con=Dbconnection.getConnection();
    PreparedStatement ps=con.prepareStatement("insert into crops values(?,?,?,?,?)");

    ps.setInt(1,id);
    ps.setString(2,season);
    ps.setString(3,seasontime);
    ps.setString(4,soil);
    ps.setString(5,crops);
    
    
    
    int i=ps.executeUpdate();
    if(i>0)
    {
    response.sendRedirect("admin_season.jsp?msg=Success");
    }
    else{
    response.sendRedirect("admin_season.jsp?msg1=Failed");    
    }
    %>
    <%
    }

    catch(Exception e)
    {
            out.println(e.getMessage());
    }
    %>