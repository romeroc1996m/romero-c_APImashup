<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Movie;


class MovieController extends Controller {
    /**
     * Create a new controller instance.
     *
     * @return void
     */

     public function getAll() {
        $movies = Movie::all();
        return response()->json($movies);
    }

    public function getOne($id) {
        $movie = Movie::find($id);
        return response()->json($movie);
    }

    public function save(Request $request) {
        $this->validate($request, [
            'title' => 'required',
            'original_title' => 'required',
            'movie_banner' => 'required',
            'ghibli_movie_id' => 'required'
        ]);
        $movie = Movie::create($request->all());
        return response()->json($movie, 201);
    }

    public function update(Request $request, $id) {
        $movie = Movie::findOrFail($id);
    
        $this->validate($request, [
            'title' => 'required',
            'original_title' => 'required',
            'movie_banner' => 'required',
            'ghibli_movie_id' => 'required'
        ]);
        $movie->update($request->all());
        return response()->json($movie);
    }
    
    public function delete($id) {
        $movie = Movie::findOrFail($id);
        $movie->delete();
        return response()->json(null, 204);
    }

}
