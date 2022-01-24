<?php

namespace App\Models;

use CodeIgniter\Model;

class AgendaItem extends Model
{

    protected $table = 'agenda_item';
    protected $allowedFields = [
        'name', 'id_session', 'is_accepted', 'is_vote_enabled', 'is_discussion_enabled',
        'is_public_voting'
    ];
    protected $returnType = 'object';

    public function getAgendaItems($sessionId)
    {
        return $this->where('id_session', $sessionId)->findAll();
    }
    
}
