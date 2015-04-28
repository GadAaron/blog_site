@extends('layout')
@section('content')
<div class="container">
	<div class="row">
		<div class="col-md-8 col-md-push-2">
			<h1 class="lbl_read_blog_title">{{$blogs->title}}</h1>
			<h5 class="lbl_read_blog_creation_date"><i>{{$blogs->created_at}}</i></h5>
			<hr>
			<h4 class="lbl_read_blog_content">{{$blogs->content}}</h4>
			<h5 class="lbl_read_blog_content"><i>{{$blogs->author}}</i></h5>
			<a href="{{URL::to('bloggers')}}" class="btn btn-danger btn_blog_list">Blog list</a>
		</div>
	</div>
</div>
@stop
