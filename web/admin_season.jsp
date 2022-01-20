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

    <%
      if (request.getParameter("msg") != null) {%>
       <script>alert('Crop Added Successfully');</script>
      <%}
       if (request.getParameter("msg1") != null) {%>
       <script>alert('Failed');</script> 

      <%}
    %>

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
    <div class="q">
        <center><p><font size="5" color="black">Add Season </font></p><br/></center>
     
    <form action="admin_season1.jsp" method="post">
    <center><table width="281" border="0" >

   <tr>
    <td height="43"><font color="black">Season</td>
    <td><select name="season" style="width:170px;" required="">
    <option>--Select--</option>
    <option>Kharif</option>
    <option>Rabi</option>
    </select></td>
    </tr>
            
    <tr>
    <td height="43"><font color="black">Season Time </td>
    <td><select name="seasontime" style="width:170px;" required="">
    <option>--Select--</option>
    <option>July to October</option>
    <option>October to March</option>
    </select></td>
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