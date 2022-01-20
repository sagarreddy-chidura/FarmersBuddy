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
        <li id="current"><a href="adminhome.jsp">Home</a></li>
  <li><a href="admin_season.jsp">Add Season</a></li>
  <li><a href="admin_query.jsp">User Query</a></li>
  <li><a href="index.html">Logout</a></li>

    </ul>
</div>

<div>

    <%
  int id=Integer.parseInt(request.getParameter("id"));
  
  String season=null;
  String seasontime=null;
  String soil=null;
  String crops=null;
  String query=null;
  String user=null;
      
    Connection con = Dbconnection.getConnection();
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("select * from userquery where id="+id+"");
    
   if(rs.next()){
    season=rs.getString(2);
    seasontime=rs.getString(3);
    soil=rs.getString(4);
    crops=rs.getString(5);
    query=rs.getString(6);
    user=rs.getString(9);
    
   }
    
  
  %>
  
  
 <br><br>

<div class="y">

    <center><p><font size="5" color="black">User Query </font></p><br/></center>
     
    <form action="admin_query2.jsp" method="post">
    <center><table width="281" border="0" >

     <tr>
    <td width="191" height="43"><font color="black">ID </td>
    <td width="218"><input name="id" required="" value="<%=id%>" /></td>
    </tr>       
            
            
    <tr>
    <td width="191" height="43"><font color="black">Season </td>
    <td width="218"><input name="season" required="" value="<%=season%>" /></td>
    </tr>
            
    <tr>
    <td width="191" height="43"><font color="black">Season Time</td>
    <td width="218"><input name="seasontime" required="" value="<%=seasontime%>" /></td>
    </tr>        
     
     <tr>
    <td width="191" height="43"><font color="black">Soil</td>
    <td width="218"><input name="soil" required="" value="<%=soil%>" /></td>
    </tr> 
    
    <tr>
    <td width="191" height="43"><font color="black">crops</td>
    <td width="218"><input name="crops" required="" value="<%=crops%>" /></td>
    </tr>
        
     <tr>
    <td width="191" height="43"><font color="black">User</td>
    <td width="218"><input name="user" required="" value="<%=user%>" /></td>
    </tr>
    
    
     <tr>
    <td width="191" height="43"><font color="black">Query</td>
    <td width="218"><textarea name="query" rows="3" cols="25" required="" value="<%=query%>"><%=query%></textarea></td>
    </tr>  
            
    <tr>
    <td height="65"><font color="black">Solution</td>
    <td><textarea name="solution" rows="5" cols="25" required=""></textarea></td>
    </tr> 
    
    
            
    <td rowspan="4">
    <td><br><font color="black"><input type="submit" name="submit" value="SUBMIT" /></td>
   
    </td>
    <tr></tr>      
    </table></center>
    </form>
    <br/>   

</div>

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