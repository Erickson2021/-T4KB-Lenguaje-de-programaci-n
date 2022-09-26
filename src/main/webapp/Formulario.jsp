<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Formulario</title>
<style>
#frm {
	width: 500px;
	margin: auto;
	}
	.form-group.has-error .form-control-label{
	color: red;
	}
	.form-group.has-error .form-control {
	border: 1px solid red;
	box-shadow: 0 0 0 0.2rem rgba(250, 16, 0, 0.18);
	}
	.help-block{
	color: red;
	}
}
</style>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"></head>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>
<body>
  <div class = "container">
	<form action="ServeletTest" id="frm" method="post" class="fomr">
			<div class="form-group">
				<label for="exampleInputFullName">Full Name</label> 
				<input name="FullName" type="text" class="form-control" id="FullName">
			</div>
			<div class="form-group">
				<label for="exampleInputUsername">Username </label> 
				<input name="Username" type="text" class="form-control" id="Username">
			</div>

			<div class="form-group">
				<label for="exampleInputEmail">Email </label> 
				<input name="Email" type="text" class="form-control" id="Email">
			</div>

			<div class="form-group">
				<label for="exampleInputpassword">Password </label> 
				<input name="password" type="password" class="form-control" id="password">
			</div>

			<div class="form-group">
				<label for="exampleInputConfirmpassword">Confirm Password </label> 
				<input name="Confirmpassword" type="password" class="form-control" id="Confirmpassword">
			</div>
			<div class="form-group">
			<label for="exampleInputcheckbox"></label> 
			<input type="checkbox" name="check" id="check"> I have read and agree to the Terms
			<br>
			</div> 
			<br> <br>
			<div class="modal-footer">
			<button type="submit" class="btn btn-primary">Register</button>
			<button type="reset" class="btn btn-secondary">Reset</button>
			</div>
	</form>	
	</div>
	
	 

<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="https://cdn.bootcdn.net/ajax/libs/bootstrap-validator/0.5.3/js/bootstrapValidator.js"></script>

<script type="text/javascript">
		$(document).ready(function(){
			$('#frm').bootstrapValidator({
				fields:{
					FullName:{
						validators:{
							notEmpty:{
								message: 'Fullname is required'
							},
							regexp:{
								regexp:/^[a-zA-Z\s\ñ\Ñ\á\é]{3,}$/,
								message: 'Campo nombre solo letras'
							}
						}
					},
					Username:{
						validators:{
							notEmpty:{
								message: 'Username is required'
							}
						}
					},
					Email:{
						validators:{
							notEmpty:{
								message: 'Email is required'
							},
							regexp:{
								regexp:/^[-\w.%+]{1,64}@(?:[A-Z0-9-]{1,63}\.){1,125}[A-Z]{2,63}$/i,
								message: 'Por favor ingrese un email válido.'
							}
						}
					},
					password:{
						validators:{
							notEmpty:{
								message: 'Password is required'
							},
							regexp:{
								regexp:/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[A-Za-z\d$@$!%*?&]{2,8}/,
								message: 'Debe tener 8 caracteres o más.'
							}
						}
					},
					Confirmpassword:{
						validators:{
							notEmpty:{
								message: 'Confirm password is required'
							},
							regexp:{
								regexp:/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[A-Za-z\d$@$!%*?&]{2,8}/,
								message: 'Debe tener 8 caracteres o más.'
							}
						}
					},
					check:{
						validators:{
							notEmpty:{
								message: 'Accept Terms is required'
							}
						}
					},
				}
			});
		});
</script>		
</body>
</html>









































