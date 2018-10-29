<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Profile extends Model
{
    public $timestamps = false;
    
    protected $fillable = [
        'firstname',
        'lastname',
        'nickname',
        'age',
        'gender',
        'phone',
        'email',
    ];

    public function user() {
        return $this->belongsTo('user_id');
    }
}
