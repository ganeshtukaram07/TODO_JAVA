<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>To-Do List</title>
  <meta name="description" content="Description of your site goes here">
  <meta name="keywords" content="keyword1, keyword2, keyword3">
  <link href="css/style.css" rel="stylesheet" type="text/css">
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
  <li style="background: transparent none repeat scroll 0% 50%; -moz-background-clip: initial; -moz-background-origin: initial; -moz-background-inline-policy: initial; padding-left: 0px;"> <a href="UserProfile.jsp" class="classname">Home</a></li>
    <li> 	 <a href="AddList.jsp" class="classname">Add List</a></li>
    
       <li> <a href="index.jsp" class="classname">Logout</a>
 
</ul>
</div>
</div>

<div class="content">
<div class="content-right">
<center><font style="font-size: 20px">Logged In User : <h4 style="color: red;"><%=session.getAttribute("unam") %></h4></font></center>
</div>
<div class="row2">
 
 
  <form action="AddSubListServlet" method="post">
        <table align="center"class="fileup" bgcolor="#CD853F" border="0" cellspacing="10" cellpadding="11" style="font-family: monotype corsiva;font-size: 22px;font-weight: bold">
        <thead>
            <tr bgcolor="#FAEBD7">
                <th colspan="2" >Add Sub List</th>
                
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>List Name<input type="hidden" name="addlist" value="<%=request.getParameter("addlist") %>"> <%=request.getParameter("addlist") %></td>
                <td><input type="text" name="addsublist" style="font-family: monotype corsiva;font-size: 20px"></td>
            </tr>
             <tr><td colspan="2" align="right"><input type="submit" value="Add...." style="font-family: monotype corsiva;font-size: 22px;font-weight: bold">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
            
            
        </tbody></table>  </form>       
 
 
</div>


</div>

<!--DO NOT Remove The Footer Links-->
<!--Designed by-->
<!--DO NOT Remove The Footer Links-->
</div>
</div>
</div>

</body></html>