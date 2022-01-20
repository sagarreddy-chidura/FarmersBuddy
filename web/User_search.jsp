<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="novelefficient.Dbconnection"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Farmers Buddy</title>
    <link rel="stylesheet" href="Style1.css">
</head>
<body>

    <Div class="m">
        <h1 >
           <a href="index.html" class="c"> Farmers Buddy </a>
        </h1>
    </Div>
    <div class="nav">
        <ul>
            <li id="current">
                <a href="Userhome.jsp"> Home </a> 
            </li>
            <li>
                <a href="User_search.jsp"> Send Query </a> 
            </li>
            <li>
                <a href="User_solution.jsp"> Solution </a> 
            </li>
            <li>
                <a href="index.html"> Logout </a> 
            </li>

        </ul>
    </div>

    <div class="q">
        
        <%
    
    
        Connection con = Dbconnection.getConnection();
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select * from crops ");
        
         Statement st1 = con.createStatement();
        ResultSet rs1 = st1.executeQuery("select * from crops ");
        
        Statement st2 = con.createStatement();
        ResultSet rs2 = st2.executeQuery("select * from crops ");
        
        
    
                %>   
     
              <center><p><font size="5" color="black">Search </font></p><br/></center>
         
        <form action="User_search1.jsp" method="post">
        <center><table width="281" border="0" >
    
                
        
         <tr>
        <th height="43"><font color="black">Select season</th>
        <td><select id="s1" name="season" style="width:170px;" class="text" required="">
          <% 
      while(rs1.next())
      {
      String season = rs1.getString("season");
    
              %>
    
    
              <option value="<%=season%>" ><%=season%></option>
       <% }%>
        </select></td>
        </tr>  
        
            
        
        <tr>
        <th height="43"><font color="black">Select Season Time</th>
        <td><select id="s1" name="seasontime" style="width:170px;" class="text" required="">
          <% 
      while(rs2.next())
      {
      String seasontime = rs2.getString("seasontime");
    
              %>
    
    
              <option value="<%=seasontime%>" ><%=seasontime%></option>
       <% }%>
        </select></td>
        </tr>   
        
            
        
        
        <tr>
        <th height="43"><font color="black">Select Soil</th>
        <td><select id="s1" name="soil" style="width:170px;" class="text" required="">
          <% 
      while(rs.next())
      {
      String soil = rs.getString("soil");
    
              %>
    
    
              <option value="<%=soil%>" ><%=soil%></option>
       <% }%>
        </select></td>
        </tr> 
        
        
        
                
        <td rowspan="4">
        <td><br><font color="black"><input type="submit" name="submit" value="Search" /></td>
       
        </td>
        <tr></tr>      
        </table></center>
        </form>
        <br/>                              
    




    </div>
    <div>
        <pre>



            

        </pre>
    </div>
    <div class="j">
        <br> <pre style="text-align: center;">
            Contact Us

            Mail: chidurareddy63@gmail.com
        </pre> 
        
        
   </div>
</body>
</html>
