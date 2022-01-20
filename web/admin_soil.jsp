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
            <li>
                <a href="adminhome.jsp"> Home </a> 
            </li>
            <li>
                <a href="admin_season.jsp"> Add Season </a> 
            </li>
            <li>
                <a href="index.html"> Logout </a> 
            </li>
            <li>
                <a href="About us.html"> About Us </a> 
            </li>

        </ul>
    </div>

    <%
        String season=request.getParameter("season");
        String seasontime=request.getParameter("seasontime");
        String soil=request.getParameter("soil");
  
    %>

    <div class="g"> 

        <%
    if(soil.equals("Alluvial Soil")){
    
    %>
    
     <center><p><font size="5" color="black">Suggested Crops </font></p><br/></center>
     
    <form action="admin_soilact.jsp" method="post">
    <center><table width="281" border="0" >

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
    <td height="43"><font color="black">Crops</td>
    <td><select name="crops" style="width:170px;" required="">
    <option>--Select--</option>
    <option>Wheat</option>
    <option>Rice</option>
    <option>Barley</option>
    <option>Maize</option>
   </select></td>
    </tr>        
            
           
            
    <td rowspan="4">
    <td><br><font color="black"><input type="submit" name="submit" value="ADD" /></td>
   
    </td>
    <tr></tr>      
    </table></center>
    </form>
    <br/>   
        
      <%}%>  
        
      <%
    if(soil.equals("Red Soil")){
    %>
      
    
    <center><p><font size="5" color="black">Add Soil </font></p><br/></center>
     
    <form action="admin_soilact.jsp" method="post">
    <center><table width="281" border="0" >

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
    <td height="43"><font color="black">Crops</td>
    <td><select name="crops" style="width:170px;" required="">
    <option>--Select--</option>
    <option>Wheat</option>
    <option>Rice</option>
    <option>Barley</option>
    <option>Maize</option>
   </select></td>
    </tr>  
            
           
            
    <td rowspan="4">
    <td><br><font color="black"><input type="submit" name="submit" value="ADD" /></td>
   
    </td>
    <tr></tr>      
    </table></center>
    </form>
    <br/>   
        
      <%}%>  
       
      
     <%
    if(soil.equals("Regur Soil")){
        
   
    %>
    
     <center><p><font size="5" color="black">Add Soil </font></p><br/></center>
     
    <form action="admin_soilact.jsp" method="post">
    <center><table width="281" border="0" >

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
    <td height="43"><font color="black">Crops</td>
    <td><select name="crops" style="width:170px;" required="">
    <option>--Select--</option>
    <option>Wheat</option>
    <option>Rice</option>
    <option>Barley</option>
    <option>Maize</option>
   </select></td>
    </tr>  
           
            
    <td rowspan="4">
    <td><br><font color="black"><input type="submit" name="submit" value="ADD" /></td>
   
    </td>
    <tr></tr>      
    </table></center>
    </form>
    <br/>   
        
      <%}%>   

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