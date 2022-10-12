<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<!-- Bootstrap core CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">

<link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<script src="/scripts/jquery.min.js"></script>
<script src="/bootstrap/js/bootstrap.min.js"></script>
<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}
</style>
<!-- Custom styles for this template -->
<link href="cover.css" rel="stylesheet">
<link rel="stylesheet" href="assets/css/style.css">
</head>
<body>


	<!-- Pills navs -->


	<div class="login-root">
		<div class="box-root flex-flex flex-direction--column"
			style="min-height: 100vh; flex-grow: 1;">
			<div class="loginbackground box-background--white padding-top--64">
				<div class="loginbackground-gridContainer">
					<div class="box-root flex-flex" style="grid-area: top/start/8/end;">
						<div class="box-root"
							style="background-image: linear-gradient(white 0%, rgb(247, 250, 252) 33%); flex-grow: 1;">
						</div>
					</div>
					<div class="box-root flex-flex" style="grid-area: 4/2/auto/5;">
						<div
							class="box-root box-divider--light-all-2 animationLeftRight tans3s"
							style="flex-grow: 1;"></div>
					</div>
					<div class="box-root flex-flex" style="grid-area: 6/start/auto/2;">
						<div class="box-root box-background--blue800"
							style="flex-grow: 1;"></div>
					</div>
					<div class="box-root flex-flex" style="grid-area: 7/start/auto/4;">
						<div class="box-root box-background--blue animationLeftRight"
							style="flex-grow: 1;"></div>
					</div>
					<div class="box-root flex-flex" style="grid-area: 8/4/auto/6;">
						<div
							class="box-root box-background--gray100 animationLeftRight tans3s"
							style="flex-grow: 1;"></div>
					</div>
					<div class="box-root flex-flex" style="grid-area: 2/15/auto/end;">
						<div
							class="box-root box-background--cyan200 animationRightLeft tans4s"
							style="flex-grow: 1;"></div>
					</div>
					<div class="box-root flex-flex" style="grid-area: 3/14/auto/end;">
						<div class="box-root box-background--blue animationRightLeft"
							style="flex-grow: 1;"></div>
					</div>
					<div class="box-root flex-flex" style="grid-area: 4/17/auto/20;">
						<div
							class="box-root box-background--gray100 animationRightLeft tans4s"
							style="flex-grow: 1;"></div>
					</div>
					<div class="box-root flex-flex" style="grid-area: 5/14/auto/17;">
						<div
							class="box-root box-divider--light-all-2 animationRightLeft tans3s"
							style="flex-grow: 1;"></div>
					</div>
				</div>
			</div>
			<div
				class="box-root padding-top--24 flex-flex flex-direction--column"
				style="flex-grow: 1; z-index: 9;">
				<div
					class="box-root padding-top--48 padding-bottom--24 flex-flex flex-justifyContent--center">
					<h1>
						<a href="http://blog.stackfindover.com/" rel="dofollow">Register
							Below</a>
					</h1>

				</div>
				<div class="formbg-outer">

					<div class="formbg">
						<div class="navbar-custom">
							<ul class="nav nav-pills nav-justified mb-3" id="ex1"
								role="tablist">
								<li class="nav-item" role="presentation"><a
									class="nav-link" id="tab-login" data-mdb-toggle="pill"
									href="/login" role="tab" aria-controls="pills-login"
									aria-selected="true">Login</a></li>
								<li class="nav-item" role="presentation"><a
									class="nav-link active" id="tab-register"
									data-mdb-toggle="pill" href="/register" role="tab"
									aria-controls="pills-register" aria-selected="false">Register</a></li>
							</ul>
						</div>
						<div class="formbg-inner padding-horizontal--48">
							<span class="padding-bottom--15">Fill out the fields below</span>
							<form:form modelAttribute="student" action="/register"
								method="post" id="stripe-login">
								<div class="field padding-bottom--24">
									<label for="firstname">First Name</label>
									<form:input path="firstName" type="text" name="firstName" />
								</div>
								<div class="field padding-bottom--24">
									<label for="lastname">Last Name</label>
									<form:input path="lastName" type="text" name="lastName" />
								</div>
								<div class="field padding-bottom--24">
									<label for="age">Age</label>
									<form:input path="age" type="text" name="age" />
								</div>
								<div class="field padding-bottom--24">
									<label for="phonenumber">Phone Number</label>
									<form:input path="phoneNumber" type="text" name="phoneNumber" />
								</div>
								<div class="field padding-bottom--24">
									<label for="email">Email</label>
									<form:input path="email" type="email" name="email" />
								</div>
								<div class="field padding-bottom--24">
									<div class="grid--50-50">
										<label for="password">Password</label>
										<div class="reset-pass">
											<a href="#">Forgot your password?</a>
										</div>
									</div>
									<form:input path="password" type="password" name="password" />
								</div>
								<br>
								<h2>Address</h2>
								<br>
								<div class="field padding-bottom--24">
									<label for="street">Street</label>
									<form:input path="address.street" type="text" name="street" />
								</div>
								<div class="field padding-bottom--24">
									<label for="street">City</label>
									<form:input path="address.city" type="text" name="city" />
								</div>
								<div class="field padding-bottom--24">
									<label for="street">State</label>
									<form:select path="address.state" id="inputState"
										class="form-control">
										<option selected>Choose...</option>
										<option value="AL">AL</option>
										<option value="AK">AK</option>
										<option value="AZ">AZ</option>
										<option value="AR">AR</option>
										<option value="CA">CA</option>
										<option value="CZ">CZ</option>
										<option value="CO">CO</option>
										<option value="CT">CT</option>
										<option value="DE">DE</option>
										<option value="DC">DC</option>
										<option value="FL">FL</option>
										<option value="GA">GA</option>
										<option value="GU">GU</option>
										<option value="HI">HI</option>
										<option value="ID">ID</option>
										<option value="IL">IL</option>
										<option value="IN">IN</option>
										<option value="IA">IA</option>
										<option value="KA">KA</option>
										<option value="KY">KY</option>
										<option value="LA">LA</option>
										<option value="ME">ME</option>
										<option value="MD">MD</option>
										<option value="MA">MA</option>
										<option value="MI">MI</option>
										<option value="MN">MN</option>
										<option value="MS">MS</option>
										<option value="MO">MO</option>
										<option value="MT">MT</option>
										<option value="NE">NE</option>
										<option value="NV">NV</option>
										<option value="NH">NH</option>
										<option value="NJ">NJ</option>
										<option value="NM">NM</option>
										<option value="NY">NY</option>
										<option value="NC">NC</option>
										<option value="ND">ND</option>
										<option value="OH">OH</option>
										<option value="OR">OR</option>
										<option value="PA">PA</option>
										<option value="PR">PR</option>
										<option value="RI">RI</option>
										<option value="SC">SC</option>
										<option value="SD">SD</option>
										<option value="TN">TN</option>
										<option value="TX">TX</option>
										<option value="UT">UT</option>
										<option value="VT">VT</option>
										<option value="VI">VI</option>
										<option value="VA">VA</option>
										<option value="WA">WA</option>
										<option value="WV">WV</option>
										<option value="WI">WI</option>
										<option value="WY">WY</option>
									</form:select>
								</div>
								<div class="field padding-bottom--24">
									<label for="zipCode">Zip Code</label>
									<form:input path="address.zip" type="text" name="zipCode" />
								</div>

								<div class="field padding-bottom--24">
									<input type="submit" name="submit" value="Submit">
								</div>

							</form:form>
						</div>
					</div>
					<div class="footer-link padding-top--24">
						<div
							class="listing padding-top--24 padding-bottom--24 flex-flex center-center">
							<span><a href="#">© Stackfindover</a></span> <span><a
								href="#">Contact</a></span> <span><a href="#">Privacy &
									terms</a></span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>