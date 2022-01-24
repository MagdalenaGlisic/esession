<?php

namespace App\Models;

use CodeIgniter\Model;

class Remark extends Model
{

    protected $table = 'remark';
    protected $allowedFields = [
        'content_observation', 'id_user', 'id_session'
    ];
    protected $returnType = 'object';
}
