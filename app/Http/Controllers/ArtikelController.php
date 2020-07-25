<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Session;
use Alert;
use DB;
use Auth;
use App\Http\Requests;
use App\Http\Requests\ArtikelRequest;
use App\Http\Controllers\Controller;
use App\Artikel;
use App\CommentArtikel;
use App\Kategoriartikel;
use App\Notification;
use App\Setting;
use App\Soal;
use App\Jawaban;
use App\User;
use Charts;


class ArtikelController extends Controller
{
    public function index()
    {

      $artikel = Artikel::where('accepted' , '1')->orderby('created_at', 'desc')->get();

      return view('layout/artikel/listartikel' , compact('artikel'));
    }



    public function create()
    {
      $kategori = DB::table('kategoriartikel')
                  ->get();
        return view('layout/admin/tambahartikel',  ['kategori' => $kategori]);
    }



    public function store(ArtikelRequest $request)
    {
    //   $filename = time() . '.' .$request->file('featured_img')->getClientOriginalExtension();
    //   $request->file('featured_img')->move(
    //     base_path() . '/public/img/artikel/', $filename
    // );

      $slug = str_slug($request->title, '-');

      //mengecek str_slug
      if (Artikel::where('slug', $slug)->first() != null) {
        $slug = $slug . '-' . time();
      }

      $artikel = new Artikel();
      $artikel->title           = $request->title;
      $artikel->deskripsi       = $request->deskripsi;
      // $artikel->featured_img    = $filename;
      $artikel->id_kategori     = $request->id_kategori;
      $artikel->id_admin        = $request->id_admin;
      $artikel->accepted        = $request->accepted;
      $artikel->slug            = $slug;
      $artikel->save();

      alert()->success('Artikel Berhasil Ditambah.', 'Good!');
      return Redirect::action('ArtikelController@indexAdmin');
    }


    public function show($slug)
    {
      $bab = Kategoriartikel::get();
      $artikel = Artikel::where('slug' , $slug)->first();
      return view('layout/artikel/postmodul' , compact('bab' , 'artikel'));
    }

    public function materi()
    {
      $bab = Kategoriartikel::get();
      $artikel = Artikel::where('accepted' , '1')->get();
      $typesoal = DB::table('type_soal')->get();
      $about = Setting::where('id' , 3)->first();
      return view('layout/artikel/modul' , compact('bab' , 'artikel' , 'typesoal' , 'about'));
    }

    public function isimateri($slug)
    {
      $artikel = Artikel::where('accepted' , '1')->get();
      $isi = Artikel::where('slug' , $slug)->first();
      $typesoal = DB::table('type_soal')->get();
      return view('layout/artikel/isimodul' , compact('isi' , 'artikel', 'typesoal'));
    }

    public function soal($id)
    {
      $artikel = Artikel::where('accepted' , '1')->get();
      $typesoal = DB::table('type_soal')->get();
      $soal = Soal::where('type_soal' , $id)->get();
      $a = Soal::where('type_soal' , $id)->first();
      return view('layout/artikel/soal' , compact( 'artikel', 'typesoal' , 'soal', 'a'));
    }

    public function jawaban(Request $request)
    {
        $soal = Soal::all();
        $nilai = 0;
        // dd($request->tipesoal);

      if ($request->tipesoal == '1') {
        if ($request->id1 == 'C') {
          $nilai = $nilai + 20;
        }
        if ($request->id2 == 'B') {
           $nilai = $nilai + 20;
        }
        if ($request->id3 == 'D') {
           $nilai = $nilai + 20;
        }
        if ($request->id4 == 'C') {
           $nilai = $nilai + 20;
        }
        if ($request->id5 == 'B') {
           $nilai = $nilai + 20;
        }
      }elseif ($request->tipesoal == '2') {
         if ($request->id6 == 'D') {
          $nilai = $nilai + 20;
        }
        if ($request->id10 == 'C') {
          $nilai = $nilai + 20;
        }
        if ($request->id11 == 'C') {
          $nilai = $nilai + 20;
        }
        if ($request->id12 == 'D') {
          $nilai = $nilai + 20;
        }
        if ($request->id13 == 'E') {
          $nilai = $nilai + 20;
        }
      }
      // dd('Nilai anda = ' . $nilai);

      if ($request->tipesoal == '1') {
        $jawaban = Jawaban::create([
          'jwb1' => $request->id1,
          'jwb2' => $request->id2,
          'jwb3' => $request->id3,
          'jwb4' => $request->id4,
          'jwb5' => $request->id5,
          'id_soal' => 1,
          'id_user' => $request->id_user,
          'nilai' => $nilai
        ]);         
      }elseif ($request->tipesoal == '2') {
        $jawaban = Jawaban::create([
          'jwb1' => $request->id6,
          'jwb2' => $request->id10,
          'jwb3' => $request->id11,
          'jwb4' => $request->id12,
          'jwb5' => $request->id13,
          'id_soal' => 2,
          'id_user' => $request->id_user,
          'nilai' => $nilai
        ]);       
      }

        return Redirect::action('ArtikelController@hasil', ['id' => $request->tipesoal]);
        // dd($request->request);
    }

    public function hasil($id)
    {
      // dd('asdsad');
       $jawaban = Jawaban::where('id_user' , Auth::user()->id)->orderBy('id' , 'Desc')->first();
       $artikel = Artikel::where('accepted' , '1')->get();
       $typesoal = DB::table('type_soal')->get();
       $soal = Soal::where('type_soal' , $id)->get();

       return view('layout/artikel/hasil' , compact('jawaban' , 'artikel' , 'typesoal' , 'soal'));
    }

     public function soalessay($id)
    {
      $artikel = Artikel::where('accepted' , '1')->get();
      $typesoal = DB::table('type_soal')->get();
      $soal = DB::table('soal_essay')->where('type_soal' , $id)->get();
      $a = DB::table('soal_essay')->where('type_soal' , $id)->first();
      return view('layout/artikel/soalessay' , compact( 'artikel', 'typesoal' , 'soal', 'a'));
    }

    public function jawabanessay(Request $request)
    {
      if ($request->tipesoal == 1) {
        DB::table('jawaban_essay')->insert([
          'jawaban'   => $request->id1,
          'jawaban2'  => '',
          'id_user'   => $request->id_user,
          'type_soal' => 1
        ]);
        return redirect()->action('ArtikelController@soal', ['id' => 1]);
      }elseif ($request->tipesoal == 2) {
        DB::table('jawaban_essay')->insert([
          'jawaban'   => $request->id2,
          'jawaban2'  => $request->id3,
          'id_user'   => $request->id_user,
          'type_soal' => 2
        ]);
        return redirect()->action('ArtikelController@soal', ['id' => 2]);
      }elseif ($request->tipesoal == 3) {
        DB::table('jawaban_essay')->insert([
          'jawaban'   => $request->id4,
          'jawaban2'  => '',
          'id_user'   => $request->id_user,
          'type_soal' => 3
        ]);

        return redirect()->action('ArtikelController@soal', ['id' => 3]);
      }
      // dd($request->request);
    }

    // public function submateri($id)
    // {
    //   $bab = Kategoriartikel::get();
    //   $artikel = Artikel::where('id_kategori' , $id)->get();

    //   return view('layout/artikel/submodul' , compact('bab' , 'artikel'));
    // }


    public function edit($id)
    {
        $artikel = Artikel::find($id);

        if (!$artikel)
        abort(404);

        $kategori = DB::table('kategoriartikel')
                    ->get();
        return view('layout/admin/editartikel' , ['artikel' => $artikel , 'kategori' => $kategori]);
    }



    public function update(Request $request, $id)
    {
      // if (isset($request->featured_img)) {
      //   $filename = time() . '.' . $request->file('featured_img')->getClientOriginalExtension();
      //   $request->file('featured_img')->move(
      //     base_path() . '/public/img/artikel/', $filename
      //   );
      // }

    Artikel::find($id)->update([
      'title'           => $request->title ,
      'deskripsi'       => $request->deskripsi ,
      // 'id_kategori'     => $request->id_kategori ,
      'id_admin'        => $request->id_admin ,
    ]);
    // if (isset($request->featured_img)) {
    //   Artikel::find($id)->update([
    //     'featured_img'    => $filename ,
    // ]);
    // }

      alert()->success('Artikel Berhasil DiUpdate.', 'Berhasil!');
      return Redirect::action('ArtikelController@indexAdmin');
    }



    public function destroy($id)
    {
      $artikel = Artikel::find($id);

      $artikel->delete();
      alert()->success('Artikel Berhasil Dihapus.', 'Sukses!')->persistent("Done");;
      return Redirect::action('ArtikelController@indexAdmin');
    }



    public function indexAdmin()
    {
      $chart = Charts::database(Artikel::all(), 'pie', 'chartjs')
          ->title('Artikel Berdasarkan Tanggal upload')
          ->elementLabel("Bulan")
          ->groupByMonth('2017', true);

      $chart1 = Charts::database(Artikel::all(), 'donut', 'chartjs')
          ->title('Artikel Berdasarkan  Kategori')
          ->elementLabel("kategori")
           ->groupBy('id_kategori', null, [1 => 'Materi', 2 => 'Artikel', 3 => 'Tips & Trik']);

        $artikel = Artikel::orderby('created_at', 'desc')->get();
      return view('layout/admin/artikel' , compact('artikel' , 'chart' , 'chart1'));
    }


    // public function createuser()
    // {
    //   $kategori = DB::table('kategoriartikel')
    //               ->get();
    //     return view('layout/artikel/tambahartikel',  ['kategori' => $kategori]);
    // }

    // public function storeuser(ArtikelRequest $request)
    // {
    //   $filename = time() . '.' .$request->file('featured_img')->getClientOriginalExtension();
    //   $request->file('featured_img')->move(
    //     base_path() . '/public/img/artikel/', $filename
    // );

    //   $slug = str_slug($request->title, '-');

    //   //mengecek str_slug
    //   if (Artikel::where('slug', $slug)->first() != null) {
    //     $slug = $slug . '-' . time();
    //   }

    //   $artikel = new Artikel();
    //   $artikel->title           = $request->title;
    //   $artikel->deskripsi       = $request->deskripsi;
    //   $artikel->featured_img    = $filename;
    //   $artikel->id_kategori     = $request->id_kategori;
    //   $artikel->id_admin        = $request->id_admin;
    //   $artikel->accepted        = $request->accepted;
    //   $artikel->slug            = $slug;
    //   $artikel->save();

    //   Session::flash('success_message','Artikel '. $request->title .' Menunggu Konfirmasi dari Admin');
    //   return Redirect::action('HomeController@profil');
    // }

    // public function edituser($id)
    // {
    //     $artikel = Artikel::find($id);

    //     if (!$artikel)
    //     abort(404);

    //     $kategori = DB::table('kategoriartikel')
    //                 ->get();
    //     return view('layout/artikel/editartikel' , ['artikel' => $artikel , 'kategori' => $kategori]);
    // }



    // public function updateuser(Request $request, $id)
    // {
    //   if (isset($request->featured_img)) {
    //     $filename = time() . '.' . $request->file('featured_img')->getClientOriginalExtension();
    //     $request->file('featured_img')->move(
    //       base_path() . '/public/img/artikel/', $filename
    //     );
    //   }

    // Artikel::find($id)->update([
    //   'title'           => $request->title ,
    //   'deskripsi'       => $request->deskripsi ,
    //   'id_kategori'     => $request->id_kategori ,
    //   'id_admin'        => $request->id_admin ,
    // ]);
    // if (isset($request->featured_img)) {
    //   Artikel::find($id)->update([
    //     'featured_img'    => $filename ,
    // ]);
    // }

    // Session::flash('success_message','Artikel '. $request->title .' Berhasil diedit');
    //   return Redirect::action('HomeController@profil');
    // }



    // public function destroyuser($id)
    // {
    //   $artikel = Artikel::find($id);

    //   $artikel->delete();

    //   Session::flash('danger_message','Artikel Berhasil Dihapus');
    //   return Redirect::action('HomeController@profil');
    // }


    public function adminhasil()
    {
      $jawaban = Jawaban::get();
      $jawabanessay = DB::table('jawaban_essay')->get();
      $user = User::where('role' , 1)->get();

      return view('layout/admin/hasil' , compact('jawaban' , 'jawabanessay' , 'user'));
    }

    public function lihathasil($id)
    {
      $jawaban1 = Jawaban::where('id_user' , $id)->where('id_soal' , 1)->orderBy('id' , 'Desc')->first();
      $jawaban2 = Jawaban::where('id_user' , $id)->where('id_soal' , 2)->orderBy('id' , 'Desc')->first();
      $jawabanessay1 = DB::table('jawaban_essay')->where('id_user' , $id)->where('type_soal' , 1)->orderBy('id' , 'Desc')->first();
      $jawabanessay2 = DB::table('jawaban_essay')->where('id_user' , $id)->where('type_soal' , 2)->orderBy('id' , 'Desc')->first();
      $jawabanessay3 = DB::table('jawaban_essay')->where('id_user' , $id)->where('type_soal' , 3)->orderBy('id' , 'Desc')->first();
      $user = User::where('id' , $id)->first();

      return view('layout/admin/lihathasil' , compact('jawaban1' , 'jawaban2' , 'jawabanessay1' , 'jawabanessay2', 'jawabanessay3' , 'user'));
    }
}
