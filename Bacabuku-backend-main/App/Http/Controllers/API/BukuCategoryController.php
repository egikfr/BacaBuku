<?php

namespace App\Http\Controllers\API;

use App\Models\BukuCategory;
use Illuminate\Http\Request;
use App\Helpers\ResponseFormatter;
use App\Http\Controllers\Controller;

class BukuCategoryController extends Controller
{
    public function all(Request $request){
        $id= $request->input('id');
        $nama= $request->input('nama');
        $limit= $request->input('limit');
        $show_buku= $request->input('show_buku');

        if($id){
            $Category = BukuCategory::with('buku')->find($id);
            
        if($Category){
            return ResponseFormatter::success(
                $Category,
                'Data kategori berhasil diambil'
            );
        }
            else{
                return ResponseFormatter::error(
                    null,
                    'Data kategori tidak ada',
                    404
                );
            }    
        } 
        $Category = BukuCategory::query();
        
        if($nama){
            $Category->where('nama', '%' .$nama. '%');
        } 
        if($show_buku){
            $Category->with('buku');
        }
        return  ResponseFormatter::success(
            $Category->paginate($limit),
            'Data Produk Berhasil Diambil'
        );
    }
}