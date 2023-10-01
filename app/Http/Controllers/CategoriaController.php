<?php

namespace App\Http\Controllers;

use App\Models\Categoria;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;


class CategoriaController extends Controller
{
    public function index()
    {
        $categorias = Categoria :: all();
        return response()->json($categorias);

    }

    
    public function store(Request $request)
    {
        $rules = ['nombre'=> 'required|string|min:1|max:100'];
        $validator = Validator::make($request->input(),$rules);
        if($validator->fails()){
            return response()->json([
                'status'=> false,
                'errors'=> $validator->errors()->all()
            ],400);
        }
        $categoria=new Categoria($request->input());
        $categoria->save();
        return response()->json([
            'status'=> true,
            'message'=> 'Se ha creado la categoria exitosamente'
        ],200);

    }

    
    public function show(Categoria $categoria)
    {
        return response()->json([
            'status'=>true, 'data' => $categoria
        ]);
    }

   
    public function update(Request $request, Categoria $categoria)
    {
        $rules = ['nombre'=> 'required|string|min:1|max:100'];
        $validator = Validator::make($request->input(),$rules);
        if($validator->fails()){
            return response()->json([
                'status'=> false,
                'errors'=> $validator->errors()->all()
            ],400);
        }
        $categoria->update($request->input());
        return response()->json([
            'status'=> true,
            'message'=> 'Se ha actualizado la categoria exitosamente'
        ],200);
    }

    
    public function destroy(Categoria $categoria)
    {
        $categoria->delete();
        return response()->json([
            'status'=> true,
            'message'=> 'Se ha eliminado la categoria exitosamente'
        ],200);
    }
}
