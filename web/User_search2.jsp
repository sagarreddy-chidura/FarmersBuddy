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
    <div class="z">

        <%
    String seasontime=request.getParameter("seasontime");
    String season=request.getParameter("season");  
    String soil=request.getParameter("soil");
    String crops=request.getParameter("crops");
   
            %>   
 
          <center><p><font size="5" color="black">Add Season </font></p><br/></center>
     
    <form action="User_search3.jsp" method="post">
    <center><table width="281" border="0" >

    <tr>
    <td width="191" height="43"><font color="black">Season </td>
    <td width="218"><input name="season" required="" value="<%=season%>" /></td>
    </tr>
    
    <tr>
    <td width="191" height="43"><font color="black">Season Time </td>
    <td width="218"><input name="seasontime" required="" value="<%=seasontime%>" /></td>
    </tr>
    
    
    
    <tr>
    <td width="191" height="43"><font color="black">Soil </td>
    <td width="218"><input name="soil" required="" value="<%=soil%>" /></td>
    </tr>
            
  
     <tr>
    <td width="191" height="43"><font color="black">Crops</td>
    <td width="218"><input name="crops" required="" value="<%=crops%>" /></td>
    </tr>
    
            
      
    <tr>
    <td height="65"><font color="black">Query</td>
    <td><textarea name="query" rows="5" cols="25" required=""></textarea></td>
    </tr> 
    
    
            
            
    <td rowspan="4">
    <td><br><font color="black"><input type="submit" name="submit" value="ADD" /></td>
   
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