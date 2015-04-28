@extends('layout')

@section('page_title')
<h2 class="lbl_page_title">Manage Blogs</h2>
@stop

@section('content')
<div class="container">
	<div class="row">
		<div class="col-md-8 col-md-push-2">
			<table class="table table-stripes">
				<thead>
					<tr>
						<th class="lbl_header">Published Blogs</th>
					</tr>
				</thead>
				<tbody>
					@foreach ($blogs as $blog)
						<tr>
							<td>
								{{$blog->title}}
							</td>

							<td>
								<a class="btn btn-danger btn_option_1" href="edit/{{$blog->id}}">
								<span class="glyphicon glyphicon-pencil"></span>
								</a>

								<a class="btn btn-danger btn_option_2" href="delete/{{$blog->id}}">
								<span class="glyphicon glyphicon-trash"></span>
								</a>
							</td>
						</tr>
					@endforeach			
				</tbody>
			</table>
		</div>
	</div>
</div>

			




@stop