<?php

namespace App\Controllers;

use App\Models\AgendaItem;
use App\Models\Comment;
use App\Models\Session;
use App\Models\UserAgendaItem;
use App\Models\Voting;

class AgendaItems extends BaseController
{
    protected $model;
    protected $agendaModel;
    protected $agendaVotingModel;
    protected $discussionModel;

	public function __construct()
	{
        $this->model = new Session();
        $this->agendaModel = new AgendaItem();
        $this->agendaVotingModel = new Voting();
        $this->discussionModel = new Comment();
		
	}


    public function status($id)
    {
        //TODO check for public access

        $agendaItem = $this->agendaModel->find($id);

        if ($agendaItem === null) {
            return view('error404');
        }

        $allVotes = $this->agendaVotingModel->where('id_agenda_item', $id)->findAll();
        $allComments = $this->discussionModel->where('id_agenda_item', $id)->findAll();

        $for = 0;
        $against = 0;
        $restrained = 0;

        foreach ($allVotes as $vote){
            if($vote->for){
                $for++;
            }
            if($vote->against){
                $against++;
            }
            if($vote->restrained){
                $restrained++;
            }
        }


        $data['agendaItem'] = $agendaItem;
        $data['comments'] = $allComments;
        $data['for'] = $for;
        $data['against'] = $against;
        $data['restrained'] = $restrained;

        return view('agendaitems/status', $data);

    }
}
