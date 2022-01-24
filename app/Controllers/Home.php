<?php

namespace App\Controllers;

use App\Models\AgendaItem;
use App\Models\Session;

class Home extends BaseController
{
	protected $model;
	protected $agendaModel;

	public function __construct()
	{
		$this->model = new Session();
		$this->agendaModel = new AgendaItem();
	}
	public function index()
	{
		if ($this->model->isThereActiveSession()) {
			$data['session'] = $this->model->getActiveSession();
		} else {
			$data['session'] = null;
		}
		$data['archived'] = $this->model->where('archived', 1)->findAll();
		return view('home', $data);
	}
	public function viewArchivedSession($id){
		$session = $this->model->getSession($id);
		$data['agendaItems'] = $this->agendaModel->getAgendaItems($session->id);
		$data['session'] = $session;
		return view('archivedsession',$data);
	}
}
