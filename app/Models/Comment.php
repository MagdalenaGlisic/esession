<?php

namespace App\Models;

use CodeIgniter\Model;

class Comment extends Model
{

    protected $table = 'comment';
    protected $allowedFields = [
        'content', 'id_user', 'id_agenda_item'
    ];
    protected $returnType = 'object';
}
