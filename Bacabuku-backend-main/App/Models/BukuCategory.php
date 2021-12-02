<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class BukuCategory extends Model
{
    use HasFactory, SoftDeletes;

    protected $fillable = [
        'nama',
    ];
    
    public function buku()
    {
        return $this->hasMany(Buku::class, 'categories_id', 'id');
    }
}