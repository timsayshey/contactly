<cfoutput>
	<!DOCTYPE html>
	<html lang="en">
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">
	<title>Bootstrap</title>
	
	<!-- Bootstrap core CSS -->
	<link href="assets/css/bootstrap.min.css" rel="stylesheet">
	
	<!-- Custom styles for this template -->
	<link href="assets/css/navbar-static-top.css" rel="stylesheet">
	
	<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
	<!--[if lt IE 9]><script src="assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
	<script src="assets/js/ie-emulation-modes-warning.js"></script>
	<script src="assets/js/app.js"></script>
	
	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
		  <script src="assets/js/html5shiv.min.js"></script>
		  <script src="assets/js/respond.min.js"></script>
		<![endif]-->
	</head>
	
	<body style="zoom: 1;">
	
	<!-- Static navbar -->
	<nav class="navbar navbar-default navbar-static-top">
	<div class="container">
	<div class="navbar-header">
		<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="##" aria-expanded="false" aria-controls="navbar"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
		<a class="navbar-brand" href="javascript:void(0)">Contactly</a> </div>
	<div id="navbar" class="navbar-collapse collapse">
	<ul class="nav navbar-nav">
	<li class="active"><a href="javascript:void(0)">Home</a></li>
	</div>
	<!--/.nav-collapse -->
	</div>
	</nav>
	<div class="container">
		<h1>Le Contact Form</h1>
		<form class="form-horizontal well">
			<div class="form-group">
				<label class="col-sm-2 control-label">Name</label>
				<div class="col-sm-10">
					<input type="fullname" class="form-control" placeholder="Ex: Chuck Norris">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">Email</label>
				<div class="col-sm-10">
					<input type="email" class="form-control" placeholder="Ex: gmail@chucknorris.com">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">Taco or Burrito</label>
				<div class="col-sm-10">
					<select name="mexicanfoodpreference" class="form-control">
						<option value="">Pick One</option>
						<option>Taco</option>
						<option>Burrito</option>
					</select>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">Favorite Board Games</label>
				<div class="col-sm-10">
					<select name="numbers" multiple class="form-control">
						<option>Settlers of Catan</option>
						<option>Ticket to Ride</option>
						<option>Dominion</option>
						<option>Bang!</option>
					</select>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">Pick a weapon</label>
				<div class="col-sm-10">
					<label class="radio-inline">
						<input type="radio" name="weapon" value="Blaster"> Blaster
					</label>
					<label class="radio-inline">
						<input type="radio" name="weapon" value="Lightsaber"> Lightsaber
					</label>
					<label class="radio-inline">
						<input type="radio" name="weapon" value="Force Lightening"> Force Lightening
					</label>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<div class="checkbox">
						<label>
							<input type="checkbox">
							Add me to a mailing list
						</label>
					</div>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-primary btn-lg btn-block">Send</button>
				</div>
			</div>
		</form>
		
	</div>
	
	<!-- Bootstrap core JavaScript
		================================================== --> 
	<!-- Placed at the end of the document so the pages load faster --> 
	<script src="assets/js/jquery.min.js"></script> 
	<script src="assets/js/bootstrap.min.js"></script> 
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug --> 
	<script src="assets/js/ie10-viewport-bug-workaround.js"></script>
	</body>
	</html>
</cfoutput>