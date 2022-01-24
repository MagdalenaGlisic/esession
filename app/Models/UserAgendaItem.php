<?php

namespace App\Models;

use CodeIgniter\Model;

class UserAgendaItem extends Model
{

    protected $table = 'user_agenda_item_access';
    protected $allowedFields = [
        'enable_voting', 'enable_discussion', 'id_user', 'id_agenda_item'
    ];
    protected $returnType = 'object';
}
