<?php

namespace App\Models;

use CodeIgniter\Model;

class Document extends Model
{

    protected $table = 'document';
    protected $allowedFields = [
        'title', 'is_material', 'id_user', 'id_agenda_item','filename','date_created'
    ];
    protected $returnType = 'object';
}
