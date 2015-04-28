<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title></title>
	<link rel="stylesheet" href="{{URL::to('css/bootstrap.min.css')}}">
	<link rel="stylesheet" href="{{URL::to('css/layout.css')}}">
	<link rel="stylesheet" href="{{URL::to('css/index.css')}}">
	<link rel="stylesheet" href="{{URL::to('css/create.css')}}">
	<link rel="stylesheet" href="{{URL::to('css/manage.css')}}">
	<!-- jQuery library -->
	<script src="{{URL::to('https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js')}}">
	</script>
</head>
<body>

	<!--top navigation bar-->
		<div class="navbar navbar-default navbar-fixed-top navbar_top ">
		<div class="container">
			<a href="#" class="navbar-brand"><img src="{{URL::to('images/logoko.png')}}" class="img-responsive img_logo"></a>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="{{URL::to('bloggers')}}"><p class="link_1">Published Blogs</p></a></li>
					<li><a href="{{URL::to('bloggers/create')}}"><p class="link_1">Create a Blog</p></a></li>
					<li><a href="{{URL::to('bloggers/manage')}}"><p class="link_1">Manage Blogs
					</p></a></li>
				</ul>
		</div>
		</div>
	<!--top navigation bar-->

	<div class="container container_title">
		<div class="row">
			<div class="col-md-8 col-md-push-2">
				@yield('page_title')
				<hr>
			</div>
		</div>
	</div>

	
	@yield('content')






	<!-- Latest compiled JavaScript -->
	<script src="{{URL::to('http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js')}}"></script>
</body>
</html>