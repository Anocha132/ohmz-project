<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class User extends Model
{
    protected $fillable = [
        'username',
        'password',
    ];

    public function scopeActive($query) {
        $query->where('avaliable', true);
    }

    public function profile() {
        return $this->belongsTo('id');
    }
}
