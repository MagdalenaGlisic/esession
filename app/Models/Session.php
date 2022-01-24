<?php

namespace App\Models;

use App\Entities\SessionEntity;
use CodeIgniter\Model;

class Session extends Model
{

    protected $table = 'session';
    protected $allowedFields = [
        'name', 'id_user', 'archived', 'conclusion', 'active_from', 'is_public',
        'discussion_until', 'active_until'
    ];
    protected $returnType = 'App\Entities\SessionEntity';

    public function isThereActiveSession(): bool
    {
        return  count($this->where('archived', 0)->findAll()) > 0;
    }

    public function getActiveSession(): SessionEntity
    {
        return $this->where('archived', 0)->first();
    }

    public function getSession($id)
    {
        return $this->where('id', $id)->first();
    }
    public function getArchivedSessions(){
        return $this->where('archived',1)->findAll();
    }
   
}
