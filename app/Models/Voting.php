<?php

namespace App\Models;

use CodeIgniter\Model;

class Voting extends Model
{

    protected $table = 'voting';
    protected $allowedFields = [
        'for', 'against', 'restrained', 'id_user', 'id_agenda_item',
        'date_voted'
    ];
    protected $returnType = 'object';
}
