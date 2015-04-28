<?php namespace App;

use Illuminate\Database\Eloquent\Model as Eloquent;

class Blogs extends Eloquent {

	protected $fillable=array('title','content','author');

}
