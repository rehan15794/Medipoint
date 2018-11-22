<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="db.connect_db"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Register </title>
	<meta charset="UTF-8">
        <script type="text/javascript">
function validateImage() {
    var formData = new FormData();
 
    var file = document.getElementById("img").files[0];
 
    formData.append("Filedata", file);
    var t = file.type.split('/').pop().toLowerCase();
    if (t != "jpeg" && t != "jpg" && t != "png" &&  t != "gif") {
        alert('Please select a valid image file');
        document.getElementById("img").value = '';
        return false;
    }
    if (file.size > 5120000) {
        alert('Max Upload size is 5Mb only');
        document.getElementById("img").value = '';
        return false;
    }

    return true;
}
</script>
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->

     <script type="text/javascript">
function validateImage() {
    var formData = new FormData();
 
    var file = document.getElementById("img").files[0];
 
    formData.append("Filedata", file);
    var t = file.type.split('/').pop().toLowerCase();
    if (t != "jpeg" && t != "jpg" && t != "png" &&  t != "gif") {
        alert('Please select a valid image file');
        document.getElementById("img").value = '';
        return false;
    }
    if (file.size > 5120000) {
        alert('Max Upload size is 5Mb only');
        document.getElementById("img").value = '';
        return false;
    }

    return true;
}
</script>

</head>
<body>
	
	<div class="limiter">
		<div class="container-login100" style="background-image: url('images/bg-01.jpg');">
			<div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54">
                            <form  action="agentregister" method="post" class="login100-form validate-form" enctype="multipart/form-data">
					<span class="login100-form-title p-b-49">
						Register
					</span>
                                        <div class="wrap-input100 validate-input m-b-23" data-validate = "Username is reauired">
						<span class="label-input100">Name</span>
						<input class="input100" type="text"  name="name"  pattern="[A-Za-z\s]{3,}" title="atlest 3 digits and only alphabet"  required="" placeholder="Type your name">
						<span class="focus-input100" data-symbol="&#xf206;"></span>
					</div>
					<div class="wrap-input100 validate-input m-b-23" data-validate = "email is reauired">
						<span class="label-input100">Email</span>
                                                <input class="input100" type="text" required=""   pattern="[a-z][a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" title="example     email_.0-9@gmail.com" name="email" placeholder="Type your email">
						<span class="focus-input100" data-symbol="&#xf206;"></span>
					</div>
                                        					<div class="wrap-input100 validate-input" data-validate="mobile no is required">
						<span class="label-input100">Mobile No</span>
                                                <input class="input100" type="text"  name="mobile" pattern="[6-9][0-9]{9}" title="ten digit mobile no which start from 6-9 digits"  required="" placeholder="Type your mobile no">
						<span class="focus-input100" data-symbol="&#xf190;"></span>
					</div>
					<div class="wrap-input100 validate-input" data-validate="Password is required">
						<span class="label-input100">Password</span>
                                                <input class="input100" type="password"  required="" name="pass" title="Password must contain 1 upper 1 lower and 8 more charecter" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" placeholder="Type your password">
						<span class="focus-input100" data-symbol="&#xf190;"></span>
					</div>
                                  <div class="wrap-input100 validate-input" data-validate="image is required">
						<span class="label-input100">Image</span>
                                                <input class="input100" type="file" id="img" required="" name="file" onchange="validateImage()" >
						
					</div>
              <br><h6 style="color: violet;" ><a style="color: #000;" href="membership.jsp">Membership Plan</a></h6>
                                        <select class="col-md-12"  name="plan" id="time">
                                            <option value="15">15 Days Trial</option>
   <%
       Class.forName("com.mysql.jdbc.Driver");
       Connection cn2=new connect_db().getConnection();
       PreparedStatement ps2=cn2.prepareStatement("SELECT * FROM membership ;");
       ResultSet rs2=ps2.executeQuery();
       while(rs2.next()){
        
        %>
        
                                     
        <option class="col-md-5"  value="<%=rs2.getString("plan")%>" ><%=rs2.getString("plan")%> Days</option><br>
                             
                             
                             
                <% } %>
                
               </select>
                <br><hr>

					
					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
                                                    <div class="login100-form-bgbtn"></div>
							<button class="login100-form-btn">
								Register
							</button>
						</div>
					</div>

					<div class="txt1 text-center p-t-54 p-b-20">
                                            <a href="login.jsp">Login</a>
					</div>

				

			
				</form>
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>