<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class User extends Model
{
    protected $fillable = [
        'username',
        'password',
    ];

    public function profile() {
        return $this->hasOne('id');
    }
}
