@extends('layout')

@section('page_title')
<h2 class="lbl_page_title">Create Blog</h2>
@stop

@section('content')
<div class="container">
	<div class="row">
		<div class="col-md-8 col-md-push-2 div_create_blog">
			
			{!! Form::open(['route'=>'bloggers.create']) !!}

			<div class="form-group">
				
				{!! Form::label('lbl_create_blog_title','Title',['class'=>'lbl_create_blog_title'])!!}
				{!!Form::text('title',null,['class'=>'form-control'])!!}
				</div>

				<div class="form-group">
				{!! Form::label('lbl_create_blog_content','Content',['class'=>'lbl_create_blog_content'])!!}
				{!!Form::textarea('content',null,['class'=>'form-control'])!!}	
				</div>			
				
				{!! Form::submit('Post',['class'=>'btn btn-danger btn_create'])!!}

			{!!Form::close() !!}
		</div>
	</div>
</div>
@stop