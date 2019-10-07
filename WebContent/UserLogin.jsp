<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>To-Do List</title>
  <meta name="description" content="Description of your site goes here">
  <meta name="keywords" content="keyword1, keyword2, keyword3">
  <link href="css/style.css" rel="stylesheet" type="text/css">
    <script type="text/javascript">
        
        
        function trim(s) {
    		return s.replace(/^s*/, "").replace(/s*$/, "");
    	}
    	function validate() {
    		var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
    		if (trim(document.form1.username.value) == "") {
    			alert("Please Enter User Name.....");
    			document.form1.username.focus();
    			document.form1.username.value == "";
    			return false;
    		}

    		else if (trim(document.form1.password.value) == "") {
    			alert("Please Enter Password.......");
    			document.form1.password.focus();
    			document.form1.password.value == "";
    			return false;
    		}
    		else if (trim(document.form1.Loginkey.value) == "") {
    			alert("Please Enter LoginKey.......");
    			document.form1.password.focus();
    			document.form1.password.value == "";
    			return false;
    		}

    	}
  
  
        </script>
</head>
<body>
<div class="page-in">
<div class="page">
<div class="main">
<div class="header">
<div class="header-top">
						<h1>
							To-Do List
						</h1>
					</div>
<div class="header-bottom">

</div>
<div class="topmenu">
<ul>
  <li style="background: transparent none repeat scroll 0% 50%; -moz-background-clip: initial; -moz-background-origin: initial; -moz-background-inline-policy: initial; padding-left: 0px;"><a href="index.jsp" class="classname">Home</a></li>
  
  <li><a href="UserLogin.jsp" class="classname">Login</a></li>
  <li><a href="Newreg.jsp" class="classname">Registration</a></li>
 
</ul>
</div>
</div>
<div class="content">


<div class="row2">
<form name="form1" onsubmit="return validate()" action="logincheck.jsp" method="POST">
  <table style="font-family: monotype corsiva;font-size: 20px;font-weight: bold" align="center" background="images/log.jpg"  height="250" width="145" cellspacing="10" cellpadding="10" colspan="8" >
                 
            <tr>
                  
                    <td>UserName</td>
                   <td width="145" align="right"><input name="username" id="userName" type="text" style="width:150px;" value='' onfocus='javascript:clearUserName();' onblur='javascript:getUserName();' onKeyup="javascript: if (event.keyCode==13) {document.login.password.focus();}" /></td>  
            </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="password" value="" /></td>
                </tr>
               
                <%
                String reg=(String)session.getAttribute("reg");
                if(reg==null){}else{
                %><tr><td colspan="2"><%=reg%></td></tr>
                <%}%>
                <tr>
                    <td align="center" colspan="2"><input type="submit" value="Login" style="font-family: monotype corsiva;font-size: 20px;font-weight: bold"></td>
                </tr>
                       
            </table>
            </form>    
</div>


</div>

<!--DO NOT Remove The Footer Links-->
<!--Designed by-->
<!--DO NOT Remove The Footer Links-->
</div>
</div>
</div>

</body></html>