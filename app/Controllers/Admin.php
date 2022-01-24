<?php

namespace App\Controllers;

use App\Models\Session;
use App\Models\AgendaItem;
use App\Models\UserAgendaItem;

class Admin extends BaseController
{
	protected $model;
	protected $agendaModel;
	protected $agendaUserModel;

	public function __construct()
	{
		$this->model = new Session();
		$this->agendaModel = new AgendaItem();
		$this->agendaUserModel = new UserAgendaItem();
	}

	public function index()
	{

		return view('admin/index');
	}
	public function createsession()
	{
		if ($this->model->isThereActiveSession()) {
			return view("createsessionerror");
		} else {
			//upisuje u bazu sednicu
			if ($this->validate([
				'title' => 'required',
			])) {

				$session = [
					'name' => $this->request->getPost('title'),
					'id_user' => user_id(),
					'archived' => 0,
					'conclusion' => '',
					'is_public' => 0
				];

				$session_id = $this->model->insert($session, true);

				$agendaItem1 = [
					'name' => "Adoption of agenda items ",
					'id_session' => $session_id,
					'is_accepted' => 0,
					'is_vote_enabled' => 0,
					'is_discussion_enabled' => 0,
					'is_public_voting' => 0,

				];
				$agendaItem2 = [
					'name' => "Adoption of conlusion",
					'id_session' => $session_id,
					'is_accepted' => 0,
					'is_vote_enabled' => 0,
					'is_discussion_enabled' => 0,
					'is_public_voting' => 0,

				];
				$agendaItem3 = [
					'name' => "Questions and notices ",
					'id_session' => $session_id,
					'is_accepted' => 0,
					'is_vote_enabled' => 0,
					'is_discussion_enabled' => 0,
					'is_public_voting' => 0,

				];

				$this->agendaModel->insert($agendaItem1);
				$this->agendaModel->insert($agendaItem2);
				$this->agendaModel->insert($agendaItem3);

				return redirect()->to('admin/activesession');
			} else {

				return view('admin/createsession');
			}
		}
	}

	public function activesession()
	{
		if ($this->model->isThereActiveSession()) {
			$session = $this->model->getActiveSession();
			$data['session'] = $session;
			$data['agendaItems'] = $this->agendaModel->getAgendaItems($session->id);
		} else {
			$data['session'] = null;
		}

		return view('admin/activesession', $data);
	}
	public function conclusion()
	{
		return view('admin/conclusion');
	}
	public function dosendconclusion()
	{
		$session = [
			'conclusion' => $this->request->getPost('conclusion'),
		];
		$this->model->update($this->model->getActiveSession()->id, $session);
		return redirect()->to('admin/activesession');
	}

	public function doagendaitemresolve()
	{
		$agendaItemId = $this->request->getPost('id');
		$accepted = $this->request->getPost('accept');

		$agendaItem = $this->agendaModel->find($agendaItemId);

		if (!$agendaItem->is_accepted) {
			if ($accepted === 'true') {
				$this->agendaModel->update($agendaItemId, ["is_accepted" => 1]);
			} else {
				$this->agendaUserModel->where('id_agenda_item', $agendaItemId)->delete();
				$this->agendaModel->delete($agendaItemId);
			}
		}

		return redirect()->to('admin/activesession');
	}

	public function agendaitem($id)
	{
		$session = $this->model->getActiveSession();
		$agendaItem = $this->agendaModel->find($id);

		if ($agendaItem->id_session != $session->id) {
			return view('error404');
		}

		$data['agendaItem'] = $agendaItem;

		return view('admin/agendaitem', $data);
	}


	public function updateagendaitem($id)
	{
		$is_vote_enabled = $this->request->getPost('is_vote_enabled');
		$is_discussion_enabled = $this->request->getPost('is_discussion_enabled');
		$is_public_voting = $this->request->getPost('is_public_voting');

		$session = $this->model->getActiveSession();
		$agendaItem = $this->agendaModel->find($id);

		if ($agendaItem->id_session != $session->id) {
			return view('error404');
		}

		$this->agendaModel->update(
			$id,
			[
				"is_vote_enabled" => $is_vote_enabled === 'true',
				"is_discussion_enabled" => $is_discussion_enabled === 'true',
				"is_public_voting" => $is_public_voting === 'true',
			]
		);

		return redirect()->to('admin/agendaitem/' . $id);
	}
	public function archivesession()
	{
		$this->model->update($this->model->getActiveSession()->id, ['archived' => 1]);

		return redirect()->to('home/index');
	}
}
