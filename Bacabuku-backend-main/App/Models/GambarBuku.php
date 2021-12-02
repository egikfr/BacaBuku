<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Support\Facades\Storage;

class GambarBuku extends Model
{
    use HasFactory, SoftDeletes;
    protected $fillable = [
        'buku_id',
        'url',
    ];
    
    public function getUrlAttribute($url)
    {
        return config('app.url') . Storage::url($url);
    }
}