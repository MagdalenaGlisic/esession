<?php

namespace App\Controllers;

use App\Models\Session;

class Meetings extends BaseController
{
	protected $model;

	public function __construct()
	{
		$this->model = new Session();
	}
	public function index()
	{
		return view('meetings/index');
	}
}
