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
        <h2 class="">Reset Password </h2><br>

        <form name="myform2" action="resetact.jsp" method="post" onsubmit="return validateform()">

            <table align="center" width="350">
                
                <tr>
                    <td height="43"><font color="black"> Email ID</td>
                    <td><input type="email" name="email" class="i" size="30" required="" placeholder="Email ID"/></td>
                </tr>
                <tr>
                <td height="43"><font color="black">New Password </td>
                <td width="218"><input type="password" name="password" pattern=".{5,}" required="" class="i" size="30" placeholder="New Password" title="Must be 5 or more characters." /></td>
                </tr>
                  
            
                <tr>
                <td height="43" rowspan="3">
                <p>&nbsp;</p></td>
                <td align="left" valign="middle"> <p>&nbsp;
                </p>
                <p>
                <input name="submit" type="submit" class=" f" value="CHANGE PASSWORD" /> 
                </p>
                <div align="right">
                </div></td>
                </tr>
                </table>

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