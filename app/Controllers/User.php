<?php

namespace App\Controllers;

use App\Models\AgendaItem;
use App\Models\Comment;
use App\Models\Document;
use App\Models\Remark;
use App\Models\Session;
use App\Models\UserAgendaItem;
use App\Models\Voting;
use Config\App;

class User extends BaseController
{
    protected $model;
    protected $agendaModel;
    protected $agendaUserModel;
    protected $agendaVotingModel;
    protected $discussionModel;
    protected $remarkModel;
    protected $documentModel;

    public function __construct()
    {
        $this->model = new Session();
        $this->agendaModel = new AgendaItem();
        $this->agendaUserModel = new UserAgendaItem();
        $this->agendaVotingModel = new Voting();
        $this->discussionModel = new Comment();
        $this->remarkModel = new Remark();
        $this->documentModel = new Document();
    }

    public function index()
    {
        return view('user/index');
    }

    public function currentsession()
    {
        if ($this->model->isThereActiveSession()) {
            $session = $this->model->getActiveSession();
            $data['session'] = $session;
            $data['agendaItems'] = $this->agendaModel->getAgendaItems($session->id);
        } else {
            $data['session'] = null;
        }

        return view('user/currentsession', $data);
    }

    public function sendmaterials()
    {
        return view('user/sendmaterials');
    }

    public function dosendmaterials()
    {
        if ($this->validate([
            'title' => 'required',
            'file' => [
                'uploaded[file]',
                'mime_in[file,image/jpg,image/jpeg,application/msword,application/pdf]'
            ]
        ])) {
            $file = $this->request->getFile('file');
            $filename = $file->getName();
            $fileEntity = [
                'title' => $this->request->getPost('title'),
                'is_material' => true,
                'id_user' => user_id(),
                'id_agenda_item' => null,
                'filename' => $filename
            ];

            $this->documentModel->insert($fileEntity, true);

            $file->move('../public/assets/documents',  $filename, true);

            echo "<script>
                alert('You have successfully send a material.');
                window.location.href='" . base_url() . "/home/index';
            </script>";
        } else {
            return redirect()->back()->withInput()->with('errors', $this->validator->getErrors());
        }
    }

    public function viewConclusion()
    {

        $sessions = $this->model->getArchivedSessions();
        $data['sessions'] = $sessions;
        return view('user/viewConclusion', $data);
    }

    public function sendremarks($archivedSessionId)
    {

        // if ($this->model->isThereActiveSession()) {
        //     return view('user/sendremarkserror');
        // }

        $session = $this->model->find($archivedSessionId);
        $data['session'] = $session;
        return view('user/sendremarks', $data);
    }

    public function dosendremarks($archivedSessionId)
    {

        $remark = [
            'content_observation' => $this->request->getPost('remark'),
            'id_user' => user_id(),
            'id_session' => $archivedSessionId,
        ];


        $this->remarkModel->insert($remark, true);

        echo "<script>
            alert('You have successfully send a remark.');
            window.location.href='" . base_url() . "/home/index';
        </script>";

        // return redirect()->to('home/index');

    }
    public function sendproposals()
    {
        return view('user/sendproposals');
    }

    public function dosendproposal()
    {
        if ($this->model->isThereActiveSession()) {
            $session = $this->model->getActiveSession();
            $agendaItems = [
                'id_session' => $session->id,
                'name' => $this->request->getPost('proposal')
            ];
            $agendaItemId = $this->agendaModel->insert($agendaItems, true);

            $this->agendaUserModel->insert([
                'id_user' => user_id(),
                'id_agenda_item' => $agendaItemId,
                'enable_voting' => 1,
                'enable_discussion' => 1
            ]);
        }
        return redirect()->to('user/currentsession');
    }

    public function agendaitem($id)
    {
        $session = $this->model->getActiveSession();
        $agendaItem = $this->agendaModel->find($id);

        if ($agendaItem->id_session != $session->id) {
            return view('error404');
        }

        $data['agendaItem'] = $agendaItem;
        $data['voted'] = $this->getVoted($id);
        $data['comment'] = $this->getComment($id);

        return view('user/agendaitem', $data);
    }

    private function getVoted($id)
    {
        return $this->agendaVotingModel->where('id_user', user_id())->where('id_agenda_item', $id)->first();
    }

    private function getComment($id)
    {
        return $this->discussionModel->where('id_user', user_id())->where('id_agenda_item', $id)->first();
    }

    public function voteagendaitem($id)
    {
        $session = $this->model->getActiveSession();
        $agendaItem = $this->agendaModel->find($id);

        if ($agendaItem->id_session != $session->id) {
            return view('error404');
        }

        $vote = $this->request->getPost('vote');

        if ($vote === 'for' || $vote === 'against' || $vote === 'restrained') {


            $voted = $this->getVoted($id);

            if ($voted) {
                $this->agendaVotingModel->update($voted->id, [
                    'for' => $vote === 'for',
                    'against' => $vote === 'against',
                    'restrained' => $vote === 'restrained',
                    'date_voted' => date("Y-m-d H:i:s (e)")
                ]);
            } else {
                $this->agendaVotingModel->insert([
                    'id_user' => user_id(),
                    'id_agenda_item' => $id,
                    'for' => $vote === 'for',
                    'against' => $vote === 'against',
                    'restrained' => $vote === 'restrained'
                ]);
            }

            return redirect()->to('user/agendaitem/' . $id);
        } else {
            return view('error404');
        }
    }

    public function docomment($id)
    {
        $session = $this->model->getActiveSession();
        $agendaItem = $this->agendaModel->find($id);

        if ($agendaItem->id_session != $session->id) {
            return view('error404');
        }

        $discussion = $this->request->getPost('discussion');
        $comment = $this->getComment($id);

        if ($comment) {
            $this->discussionModel->update($comment->id, [
                'content' => $discussion
            ]);
        } else {
            $this->discussionModel->insert([
                'id_user' => user_id(),
                'id_agenda_item' => $id,
                'content' => $discussion
            ]);
        }

        return redirect()->to('user/agendaitem/' . $id);
    }
}
