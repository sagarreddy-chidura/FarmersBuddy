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

    <%
    
    String season=request.getParameter("season"); 
    String seasontime=request.getParameter("seasontime");
    String soil=request.getParameter("soil");
    
    
    Connection con = Dbconnection.getConnection();
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("select * from crops where season='"+season+"' and seasontime='"+seasontime+"'");

    %>

    <div>

           
    <center>
    <table style="width:70%" border="2" >

            <h2 style="color: black">Send Query</h2><br>

    <tr>
     
 
        <td><font color="green"> Season</td>
        <td><font color="green"> Season Time</td>
        <td><font color="green"> Soil</td>
        <td><font color="green"> Crops</td>
        <td><font color="green"> Send Query</td>
    
    </tr>

    <%
        while(rs.next()){
    %>
<tr>
    <td style="color: black"><%=season%></td>
    <td style="color: black"><%=seasontime%></td>
    <td style="color: black"><%=soil%></td>
  
    <td><select id="s1" name="crops" style="width:170px;" class="text" required="">
    <% 
  
    String crops = rs.getString("crops");

    %>


          <option value="<%=crops%>" ><%=crops%></option>
  
    </select></td>
   
  
    
    <td><a href="User_search2.jsp?season=<%=season%>&seasontime=<%=seasontime%>&soil=<%=soil%>&crops=<%=crops%>">Send Query</a> </td>
      
 </tr> 
    <%}%>                 
            
             </table>
    </center>                        
    

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