<%@page import="java.sql.*"%>
<%@page import="novelefficient.Dbconnection"%>
<%@ page session="true" %>
    <%
        
     int id=0;   
    String season = request.getParameter("season");
    String seasontime = request.getParameter("seasontime"); 
    String soil = request.getParameter("soil");
    String crops = request.getParameter("crops");
    String query = request.getParameter("query"); 
    
    String user = session.getAttribute("email").toString();
   
    
    
    
    try{
      
    Connection con=Dbconnection.getConnection();
    PreparedStatement ps=con.prepareStatement("insert into userquery values(?,?,?,?,?,?,?,?,?)");

    ps.setInt(1,id);
    ps.setString(2,season);
    ps.setString(3,seasontime);
    ps.setString(4,soil);
    ps.setString(5,crops);
    ps.setString(6,query);
    ps.setString(7,"Pending");
    ps.setString(8,"Pending");
    ps.setString(9,user);
    
    
    int i=ps.executeUpdate();
    if(i>0)
    {
    response.sendRedirect("User_query.jsp?msg=Success");
    }
    else{
    response.sendRedirect("User_query.jsp?msg1=Failed");    
    }
    %>
    <%
    }

    catch(Exception e)
    {
            out.println(e.getMessage());
    }
    %>