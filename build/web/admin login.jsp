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
        <script>alert('File Details Sent Successfully');</script>
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
            <li>
                <a href="index.html"> Home </a> 
            </li>
            <li>
                <a href="admin login.jsp"> Admin </a> 
            </li>
            <li>
                <a href="UserLogin.jsp"> User </a> 
            </li>
            <li>
                <a href="About us.html"> About Us </a> 
            </li>

        </ul>
    </div>
    <div class="q">
        <h2>Admin Login</h2><br>
    
        <form action="adminact.jsp" method="POST">
        <span class="d"> User Name  : </span> &ensp;&nbsp;&ensp;<input class="i" type="text" name="username" required="" placeholder="Enter your email" size="30" maxlength="30"> <br><br>
        <span class="d"> Password &nbsp; &nbsp;: </span> &ensp;&ensp; <input class="i" type="Password" name="password" required="" placeholder="Password" size="30" maxlength="50"> <br><br><br>
                <input class="e f " type="submit" name="submit" value="Login"> &ensp;&ensp;
                <input class="f" type="reset" value="Clear">
                    
        </form>            
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