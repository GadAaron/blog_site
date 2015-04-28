<?php namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use Carbon\Carbon;
use Request;
use App\Blogs;

class BloggersController extends Controller {

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
		$blogs=Blogs::get();
		return view('bloggers.index',compact('blogs'));
	}

	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function create()
	{
		return view('bloggers.create');
	}

	/**
	 * Store a newly created resource in storage.
	 *
	 * @return Response
	 */

	public function store()
	{
		$input['author']="Gad Aaron A. Surop";
		$input=Request::all();
		Blogs::create($input);
		return redirect('bloggers');

	}

	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($id)
	{
		return $id;
	}

	/**
	 * Show the form for editing the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function edit($id)
	{
		$blog=Blogs::find($id);
		return view('bloggers.edit',compact('blog'));
	}

	public function posted()
	{

	}

	/**
	 * Update the specified resource in storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function update($id)
	{
		$input=Request::all();
		$blogs=Blogs::find($id);
		$blogs->title=$input['title'];
		$blogs->title=$input['title'];
		$blogs->save();
		return redirect('bloggers');
	}

	public function delete($id)
	{
		$blogs=Blogs::find($id);
		$blogs->delete();
		return redirect('bloggers');
	}

	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($id)
	{
		//
	}

	public function manage()
	{
		$blogs=Blogs::get();
		return view('bloggers.manage',compact('blogs'));
	}

	public function read($id)
	{
		$blogs=Blogs::find($id);
		return view('bloggers.read',compact('blogs'));
	}

}
