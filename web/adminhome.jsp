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
        <script>alert('Login Success');</script>
        <%}
            if (request.getParameter("msg1") != null) {%>
        <script>alert('username/password wrong');</script> 
        
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
        <br> <br>
        
    <div>
            <h2>Admin Home</h2>
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