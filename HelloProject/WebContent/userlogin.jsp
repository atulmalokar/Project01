<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UserLogin</title>
<script type="text/javascript">
function validate()
{ 
   if( document.UserDetails.textnames.value == "" )
   {
     alert( "Please provide your Name!" );
     document.UserDetails.textnames.focus() ;
     return false;
   }
   if ( ( UserDetails.gender[0].checked == false ) && ( UserDetails.gender[1].checked == false ) )
   {
   alert ( "Please choose your Gender: Male or Female" );
   return false;
   }
   if( document.UserDetails.dob.value == "" )
   {
     alert( "Please provide your Date Of Birth!" );
     document.UserDetails.dob.focus() ;
     return false;
   }
   if( document.UserDetails.address.value == "" )
   {
     alert( "Please provide your Personal Address!" );
     document.UserDetails.address.focus() ;
     return false;
   }
   
   if( document.UserDetails.City.value == "-1" )
   {
     alert( "Please provide your City!" );
     document.UserDetails.City.focus() ;
     return false;
   }   
   if( document.UserDetails.pincode.value == "" ||
           isNaN( document.UserDetails.pincode.value) ||
           document.UserDetails.pincode.value.length != 6 )
   {
     alert( "Please provide a pincode in the format ######." );
     document.UserDetails.pincode.focus() ;
     return false;
   }
   if( document.UserDetails.State.value == "-1" )
   {
     alert( "Please provide your Select State!" );
     
     return false;
   }
   
 var email = document.UserDetails.emailid.value;
  atpos = email.indexOf("@");
  dotpos = email.lastIndexOf(".");
 if (email == "" || atpos < 1 || ( dotpos - atpos < 2 )) 
 {
     alert("Please enter correct email ID")
     document.UserDetails.emailid.focus() ;
     return false;
 }
  
  if( document.UserDetails.mobileno.value == "" ||
           isNaN( document.UserDetails.mobileno.value) ||
           document.UserDetails.mobileno.value.length != 10 )
   {
     alert( "Please provide a Mobile No in the format 123." );
     document.UserDetails.mobileno.focus() ;
     return false;
   }
   return( true );
}
</script>
</head>
<body>
	<form action="#" name="UserDetails"
		onSubmit="return(validate());">
		<table cellpadding="2" width="30%" bgcolor="99FFFF" align="center"
			cellspacing="2">

			<tr>
				<td colspan=2>
					<center>
						<font size=4><b>Registration Form</b></font>
					</center>
				</td>
			</tr>
			<tr>
				<td>Name</td>
				<td><input type=text name=textnames id="textname" size="30"></td>
			</tr>
			<tr>
				<td>Gender</td>
				<td><input type="radio" name="gender" value="male">Male
					<input type="radio" name="gender" value="female">Female</td>
			</tr>
			<tr>
				<td>Date Of Birth</td>
				<td><input type="date" name="dob" id="dob" size="30"></td>
			</tr>
			<tr>
				<td>Permanent Address</td><td>
				<textarea rows="5" cols="20" id="address"></textarea>
				</td>
			</tr>
			<tr>
				<td>City</td>
				<td><select name="City">
						<option value="-1" selected>select..</option>
						<option value="pandharpur">Pandharpur</option>
						<option value="nagpur">Nagpur</option>
						<option value="satara">Satara</option>
						<option value="yeola">Yeola</option>
						<option value="navimumbai">Navi Mumbai</option>
						<option value="mumbai">Mumbai</option>
				</select></td>
			</tr>
			<tr>
				<td>PinCode</td>
				<td><input type="text" name="pincode" id="pincode" size="30"></td>
			</tr>
			<tr>
			<td>State</td>
			<td><select Name="State">
					<option value="-1" selected>select..</option>
					<option value="maharashtra">MAHARASHTRA</option>
					<option value="goa">GOA</option>
			</select></td>
			</tr>
			<tr>
				<td>EmailId</td>
				<td><input type="text" name="emailid" id="emailid" size="30"></td>
			</tr>

			<tr>
				<td>MobileNo</td>
				<td><input type="text" name="mobileno" id="mobileno" size="30"></td>
			</tr>
			<tr>
				<td><input type="reset"></td>
				<td colspan="2"><input type="submit" value="Submit Form" /></td>
			</tr>
		</table>
	</form>
</body>
</html>
