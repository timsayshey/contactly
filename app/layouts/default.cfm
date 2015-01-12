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
		<title>Contactly#structKeyExists(request,"pagename") ? " | " & request.pagename : ""#</title>
		
		<!-- Bootstrap core CSS -->
		<link href="assets/css/bootstrap.min.css" rel="stylesheet">
		
		<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
		<!--[if lt IE 9]><script src="assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
		<script src="assets/js/ie-emulation-modes-warning.js"></script>		
		
		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!--[if lt IE 9]>
			  <script src="assets/js/html5shiv.min.js"></script>
			  <script src="assets/js/respond.min.js"></script>
			<![endif]-->

		<link href="assets/css/style.css" rel="stylesheet">	
	</head>
	
	<body style="zoom: 1;">
	
	<!-- Static navbar -->
	<nav class="navbar navbar-default navbar-static-top">
	<div class="container">
	<div class="navbar-header">
		<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="##" aria-expanded="false" aria-controls="navbar"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
		<a class="navbar-brand" href="#buildURL('contactly.default')#">Contactly</a> </div>
	<div id="navbar" class="navbar-collapse collapse">
	<ul class="nav navbar-nav">
	<li class="active"><a href="#buildURL('contactly.default')#">Home</a></li>
	</div>
	<!--/.nav-collapse -->
	</div>
	</nav>
	<div class="container">		
		#body#
	</div>

	<!-- Placed at the end of the document so the pages load faster --> 
	<script src="assets/js/jquery.min.js"></script> 
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/app.js"></script>
	<script src="assets/js/parsley.min.js"></script>
	<script>
		window.ParsleyConfig = {
		    errorClass: 'has-error',
		    successClass: 'has-success',
		    classHandler: function(ParsleyField) {
		        return ParsleyField.$element.parents('.form-group');
		    },
		    errorsContainer: function(ParsleyField) {
		        return ParsleyField.$element.parents('.form-group');
		    },
		    errorsWrapper: '<div class="help-block col-sm-10 col-sm-offset-2">',
		    errorTemplate: '<div></div>'
		};
	</script> 

	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug --> 
	<script src="assets/js/ie10-viewport-bug-workaround.js"></script>
	</body>
	</html>
</cfoutput>