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
    <div class="y">
        <h2 class="">User Registration </h2><br>

        <form name="myform" action="Userregact.jsp" method="post" onsubmit="return validateform()">

            <table align="center" width="350">
                <tr>
                <td width="191" height="43"><font color="black">User Name </td>
                <td width="218"><input type="text" name="username" class="i" size="30" required="" placeholder="User Name" /></td>
                </tr>
                <tr>
                <td height="43"><font color="black">Password </td>
                <td width="218"><input type="password" name="password" pattern=".{5,}" required="" class="i" size="30" placeholder="Password" title="Must be 5 or more characters." /></td>
                </tr>
                <tr>
                <td height="43"><font color="black"> Email ID</td>
                <td><input type="email" name="email" class="i" size="30" required="" placeholder="Email ID"/></td>
                </tr>
            
                <tr>
                <td height="43"><font color="black">Date Of Birth</td>
                <td><input type="date" name="dob" class="i" size="30"  placeholder="Date Of Birth" required="" ></td>
                </tr>
                <tr>
                <td height="43"><font color="black">Select Gender</td>
                <td><select name="gender" class="i" style="width:225px;" required="">
                <option>--Select--</option>
                <option>MALE</option>
                <option>FEMALE</option>
                <option>OTHERS</option>
                </select></td>
                </tr>
                <tr>
                <td height="65"><font color="black">Address</td>
                <td><textarea name="address" rows="4" cols="25" required="" placeholder="Enter address here"></textarea></td>
                </tr> 
                <tr>
                <td height="43"><font color="black">Mobile Number </td>
                <td><input type="number" name="mobile" id="txtphoneno" class="i" size="30" required="" placeholder="Mobile Number"/></td>
                </tr>  
            
                <tr>
                <td height="43" rowspan="3">
                <p>&nbsp;</p></td>
                <td align="left" valign="middle"> <p>&nbsp;
                </p>
                <p>
                <input name="submit" type="submit" class=" f" value="REGISTER" /> &ensp;&ensp;
                <input class="f" type="reset" value="CLEAR">
                </p>
                <div align="right">
                </div></td>
                </tr>
                </table>

        </form>
        &ensp;&ensp;&ensp;&ensp;&ensp;<Span ><a href="UserLogin.jsp" class="x">  Click here to Login </a> </Span>
            

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