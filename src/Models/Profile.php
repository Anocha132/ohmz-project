<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Profile extends Model
{
    public $timestamps = fasle;
    
    protected $fillable = [
        'firstname',
        'lastname',
        'nickname',
        'age',
        'gender',
        'phone',
        'email',
    ];
}
