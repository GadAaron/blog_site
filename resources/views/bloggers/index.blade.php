@extends('layout')

@section('page_title')
<h2 class="lbl_page_title">Published Blogs</h2>
@stop

@section('content')

@foreach ($blogs as $blog)
	<div class="container">
		<div class="row">
			<div class="col-md-8 col-md-push-2 div_blog_article">
				<h2 class="lbl_blog_title">{{$blog->title}}</h2>
				<h4 class="lbl_blog_content">{{$blog->content}}</h4>
				<h4 class="lbl_blog_author"><i>{{$blog->created_at}}</i></h4>
				<a class="btn btn-danger btn_read" href="bloggers/read/{{$blog->id}}"><span class="glyphicon glyphicon-search">
				</span> Read</a>
			</div>
		</div>
	</div>
@endforeach

@stop