<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Buku extends Model
{
    use HasFactory, SoftDeletes;
    
    protected $fillable =[
        'nama',
        'sinopsis',
        'rating',
        'jumlah_halaman',
        'bahasa',
        'categories',
        
    ];
    
    public function gambarbuku()
    {
        return $this->hasMany(GambarBuku::class, 'buku_id', 'id' );
    }
    
    public function category()
    {
        return $this->belongsTo(BukuCategory::class, 'categories_id', 'id' );
    }
}