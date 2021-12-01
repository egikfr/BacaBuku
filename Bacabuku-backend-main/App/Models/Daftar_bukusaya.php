<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Daftar_bukusaya extends Model
{
    use HasFactory;

    protected $fillable = [
        'users_id',
        'buku_id',
    ];

    public function user()
    {
        return $this->belongsTo(User::class, 'users_id', 'id');
    }

    public function buku()
    {
        return $this->hasMany(Buku::class, 'buku_id');
    }
    
}