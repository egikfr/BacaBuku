<?php

namespace App\Http\Controllers\API;

use App\Models\Buku;
use Illuminate\Http\Request;
use App\Helpers\ResponseFormatter;
use App\Http\Controllers\Controller;

class BukuController extends Controller
{
    public function all(Request $request){
        $id= $request->input('id');
        $nama= $request->input('nama');
        $limit= $request->input('limit');
        $sinopsis= $request->input('sinopsis');
        $rating= $request->input('rating');
        $bahasa= $request->input('bahasa');
        $categories= $request->input('categories_id');

        if($id){
            $buku = Buku::with('category', 'gambarbuku')->find($id);
            
        if($buku){
            return ResponseFormatter::success(
                $buku,
                'Data buku berhasil diambil'
            );
        }
            else{
                return ResponseFormatter::error(
                    null,
                    'Data buku tidak ada',
                    404
                );
            }    
        }  
        $buku = Buku::with(['category', 'gambarbuku']);
        
        if($nama){
            $buku->where('nama', '%' .$nama. '%');
        }
        if($sinopsis){
            $buku->where('sinopsis', '%' .$sinopsis. '%');
        }
        return  ResponseFormatter::success(
            $buku->paginate($limit),
            'Data Produk Berhasil Diambil'
        );

    }
    
}