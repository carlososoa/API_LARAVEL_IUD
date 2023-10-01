<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use App\Models\Publicacion;
use Illuminate\Http\Request;

use App\Models\Categoria;

use Illuminate\Support\Facades\Validator;

class PublicacionController extends Controller
{
    
    public function index()
    {
        $publicaciones = Publicacion::select('publicacions.*', 'categorias.nombre as categoria')
        ->join('categorias','categorias.id','=','publicacions.categoria_id')
        ->paginate(10);
        return response()->json($publicaciones);
    }

    public function store(Request $request)
    {
        $rules=[
            'titulo'=> 'required|string|min:1|max:100',
            'contenido'=> 'required|string|min:1|max:400',
            'categoria_id' => 'required|numeric'

        ];
        $validator = Validator::make($request->input(),$rules);
        if($validator->fails()){
            return response()->json([ 
                'status'=> false,
                'error' => $validator->errors()->all()
            ],400);
        }
        $publicacion = new Publicacion($request->input());
        $publicacion->save();
        return response()->json([
            'status'=> true,
            'message' => 'Publicacion creada correctamente'
        ],200);
    }

   
    public function show($id)
    {
        $publicacion = Publicacion::find($id);

        if(empty($publicacion)){
            return response()->json([ 
                'status'=> false,
                'error' => 'La publicacion seleccionada no existe'
            ],404);
        }
        return response()->json(['state'=>true,'data'=>$publicacion]);


    }

    
    public function update(Request $request, $id)
    {
        $rules=[
            'titulo'=> 'required|string|min:1|max:100',
            'contenido'=> 'required|string|min:1|max:400',
            'categoria_id' => 'required|numeric'

        ];
        $validator = Validator::make($request->input(),$rules);
        if($validator->fails()){
            return response()->json([ 
                'status'=> false,
                'error' => $validator->errors()->all()
            ],400);
        }
        $publicacion = Publicacion::find($id);
        if(empty($publicacion)){
            return response()->json([ 
                'status'=> false,
                'error' => 'La publicacion seleccionada no existe'
            ],404);
        }
        
        $publicacion->update($request->input());
        
        return response()->json([
            'status'=>true,
            'message' => 'Publicacion actualizada correctamente'],200);
    }

   
    public function destroy($id)
    {
        $publicacion = Publicacion::find($id);
        if(empty($publicacion)){
            return response()->json([ 
                'status'=> false,
                'error' => 'La publicacion seleccionada no existe'
            ],404);
        }
        $publicacion-> delete();
        return response()->json([
            'status'=>true,
            'message' => 'Publicacion eliminada correctamente'
        ],200);

    }

    public function PublicacionesByCategoria(){
        $publicaciones = Publicacion::select(DB::raw('count(publicacions.id) as count, categorias.nombre'))
        ->rightJoin('categorias','categorias.id','=','publicacions.categoria_id')
        ->groupBy('categorias.nombre')->get();
        return response()->json($publicaciones);
    }
}
