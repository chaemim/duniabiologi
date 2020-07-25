<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
// use Illuminate\Support\Facades\Session;

use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Input;
use DB;
use App\Http\Requests;
use App\Http\Requests\VideoRequest;
use App\Http\Controllers\Controller;
use App\Video;
use App\Kelas;
use App\Mapel;
use App\VideoView;
use Auth;
use Charts;
use Alert;

class VideoController extends Controller
{

    public function index()
    {
        $video = Video::orderBy('created_at' , 'desc')->get();

        return view('layout/video/listvideo' , ['video' => $video]);
    }


    public function create()
    {
        $kelas = Kelas::get();
        $mapel = Mapel::get();

        return view('layout/video/tambahvideo' , compact('kelas') , compact('mapel'));
    }



    public function store(VideoRequest $request)
    {

      $video = new Video();
      $video->title           = $request->title;
      $video->deskripsi       = $request->deskripsi;
      $video->file_video      = $request->file_video;
      $video->id_kelas        = $request->id_kelas;
      $video->id_mapel        = $request->id_mapel;
      $video->id_admin        = $request->id_admin;
      $video->save();

      if (! $video->save() )
        App::abort(404);

      alert()->success('Video Berhasil Ditambah.', 'Selamat!');
      return Redirect::action('VideoController@indexAdmin');
    }


    public function show($id)
    {
        $video = Video::where('id' , $id)->first();


        return view('layout/video/postvideo' , ['video' => $video]);
    }


    public function edit($id)
    {
        $video = Video::findOrFail($id);
        $kelas = Kelas::get();
        $mapel = Mapel::get();

        return view('layout/video/editvideo' , ['video' => $video , 'mapel' => $mapel , 'kelas' => $kelas]);
    }

    public function update(VideoRequest $request, $id)
    {
      $video = Video::findOrFail($id);
      $video->update([
        'title' => $request['title'],
        'deskripsi' => $request['deskripsi'],
        'file_video'=> $request['file_video'],
        'id_kelas' => $request['id_kelas'] ,
        'id_mapel' => $request['id_mapel'],
        'id_admin' => $request['id_admin'],
      ]);

        alert()->success('Video Berhasil DiUpdate.', 'Berhasil!');
        return Redirect::action('VideoController@indexAdmin');
    }



    public function destroy($id)
    {
      $video = Video::find($id);

      $video->delete();
      alert()->success('Video Berhasil Dihapus.', 'Sukses!');
      return Redirect::action('VideoController@indexAdmin');
    }


    public function indexAdmin()
    {
        $video = Video::orderBy('created_at' , 'desc')->get();
        return view('layout/admin/video' , compact('video' , 'chart' , 'chart1' , 'chart2'));
    }
}
