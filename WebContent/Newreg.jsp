<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>To-Do List</title>
  <meta name="description" content="Description of your site goes here">
  <meta name="keywords" content="keyword1, keyword2, keyword3">
  <link href="css/style.css" rel="stylesheet" type="text/css">
  
  
  
    <script>
   
       function trim(s) 
       {
           return s.replace( /^s*/, "" ).replace( /s*$/, "" );
       }
    function validate11()
    {
    	var letters = /^[a-zA-Z]+$/; 
    	var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/; 
    	var phoneno = /^\d{10}$/;
        var pincode = /^\d{6}$/;
       
       

       
    	if(!document.frmReg.txtName.value.match(letters)){
    		
    		alert("Please Enter Name.....");
            document.frmReg.txtName.focus();
            document.frmReg.txtName.value=="";
            return false;
    	}
    	 else if(!document.frmReg.txtAddress.value.match(letters))
         {
           alert("Please Enter Address.......");
           document.frmReg.txtAddress.focus();
           document.frmReg.txtAddress.value=="";
           return false;
         }
    	
    	 {
    	 var elem=document.frmReg.elements['rdoGender'];
    	 len=elem.length-1;
    	 chkvalue='';
    	 for(i=0; i<=len; i++)
    	 {
    	 if(elem[i].checked)chkvalue=elem[i].value; 
    	 }
    	 if(chkvalue=='')
    	 {
    	 alert('Please Select Gender');
    	 return false;
    	
    	 }
    	 else if(!document.frmReg.txtEmail.value.match(mailformat))
         {
           alert("Please Enter Email.......");
           document.frmReg.txtEmail.focus();
           document.frmReg.txtEmail.value=="";
           return false;
         }
    	 else if(!document.frmReg.txtContact.value.match(phoneno))
         {
           alert("Please Enter Contact Number.......");
           document.frmReg.txtContact.focus();
           document.frmReg.txtContact.value=="";
           return false;
         }
    	 

    	 else if(!document.frmReg.txtUsername.value.match(letters))
         {
           alert("Please Enter Username.......");
           document.frmReg.txtUsername.focus();
           document.frmReg.txtUsername.value=="";
           return false;
         }
    	 else if(!document.frmReg.passPassword.value.match(letters))
         {
           alert("Please Enter Password.......");
           document.frmReg.passPassword.focus();
           document.frmReg.passPassword.value=="";
           return false;
         }
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
  <li style="background: transparent none repeat scroll 0% 50%; -moz-background-clip: initial; -moz-background-origin: initial; -moz-background-inline-policy: initial; padding-left: 0px;"> <a href="index.jsp" class="classname">Home</a></li>
  <li><a href="AutherizeLogin.jsp" class="classname">Autherize Login</a></li>
  <li><a href="UserLogin.jsp" class="classname">User Login</a></li>
  <li> <a href="Newreg.jsp" class="classname">User Registration</a></li>
  
  
  
 
  
 
</ul>
</div>
</div>
<div class="content">


<div class="row2">

<form name="frmReg" onSubmit="return validate11();"
			action="Registration" method="post">
			
			
			<table style="padding-top: 50px;">
				<tr>
					<td class="lable" style="padding-top: 50px;">Name:</td>
					<td style="padding-top: 50px;"><input type="text"
						name="txtName" style="height: 25px;" />
					</td>
				</tr>
				<tr>
					<td class="lable" style="padding-top: 20px;">Address:</td>
					<td style="padding-top: 20px;"><input type="text"
						name="txtAddress" style="height: 70px; width: 150px;" />
					</td>
				</tr>
				<tr>
					<td class="lable" style="padding-top: 20px;">Gender:</td>

					<td align=left style="padding-top: 20px;"><input type="radio"
						name="rdoGender" value="Male" id="male" />Male <input
						type="radio" name="rdoGender" value="FeMale" id="female" />Female</td>
				</tr>
				<tr>
					<td class="lable" style="padding-top: 20px;">Email:</td>
					<td style="padding-top: 20px;"><input type="text"
						name="txtEmail" style="height: 25px;" />
					</td>
				</tr>
				<tr>
					<td class="lable" style="padding-top: 20px;">Contact No:</td>
					<td style="padding-top: 20px;"><input type="text"
						name="txtContact" style="height: 25px;" />
					</td>
				</tr>
				
				<tr>
					<td class="lable" style="padding-top: 20px;">Username:</td>
					<td style="padding-top: 20px;"><input type="text"
						name="txtUsername" style="height: 25px;" />
					</td>
				</tr>
				<tr>
					<td class="lable" style="padding-top: 20px;">Password:</td>
					<td style="padding-top: 20px;"><input type="password"
						name="passPassword" style="width: 150px; height: 25px;" />
					</td>
				</tr>
				<tr>

					<td colspan="2" style="padding-top: 20px;"><input
						type="submit" value="Save Details" style="height: 30px;" />
					</td>
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