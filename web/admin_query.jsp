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
<%
            if (request.getParameter("msg") != null) {%>
        <script>alert('Answer Sent Successfully');</script>
        <%}
            if (request.getParameter("msg1") != null) {%>
        <script>alert('Failed');</script> 
        
        <%}
%>  
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
    <br><br>
    <%
                
                 
        Connection con = Dbconnection.getConnection();
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select * from userquery ");
                                                             
    %>
    
    <center>
            <h2 style="color: black">User Query</h2><br><hr><br>   
        <table style="width:70%" border="2">
            <tr>
                <td><font color="green"> User Name</td>
                <td><font color="green"> Season</td>
                <td><font color="green"> Soil</td>
                <td><font color="green"> Crops</td>
                <td><font color="green"> Status</td>    
                <td><font color="green"> View</td>
           
            </tr>
       
    <%
       while(rs.next()){
    %>
            <tr>
                <td style="color: black"><%=rs.getString(9)%></td>
                <td style="color: black"><%=rs.getString(2)%></td>
                <td style="color: black"><%=rs.getString(4)%></td>
                <td style="color: black"><%=rs.getString(5)%></td>
                <td style="color: black"><%=rs.getString(7)%></td>              
                <td><a href="admin_query1.jsp?id=<%=rs.getInt(1)%>">View</a> </td>
             
            </tr> 
    <%}%>                 
                   
        </table>
    </center>
    
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