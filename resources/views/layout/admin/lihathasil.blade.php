@extends('layout/admin/admin')

@section('title')
  Lihat Hasil
@endsection

@section('header')
  Lihat Hasil
@endsection

@section('breadcrumb')
  Lihat Hasil
@endsection

@section('content')
<style media="screen">
  #pencarian{
    margin-bottom: 20px;
    margin-top: -20px;
  }
</style>

  <section class="tables">
    <div class="container-fluid">
      <div class="row">


      


        <div class="col-lg-12">
          <div class="card">
            <div class="card-close">
              <div class="dropdown">
                <button type="button" id="closeCard" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-ellipsis-v"></i></button>
                <div aria-labelledby="closeCard" class="dropdown-menu has-shadow"><a href="#" class="dropdown-item remove"> <i class="fa fa-times"></i>Close</a><a href="#" class="dropdown-item edit"> <i class="fa fa-gear"></i>Edit</a></div>
              </div>
            </div>
            <div class="card-header d-flex align-items-center">
              <h3 class="h4">Lihat Hasil</h3>
                <a href="{{asset('/admin/hasil')}}" class="btn btn-default" id="postbaru">Kembali</a>
            </div>
            <div class="card-body">
              @if (isset($jawabanessay1))
              <p>Nama : {{$user->name}}</p>
              <b><u> First Meeting </u></b>
              <p><u>Jawaban Studi Kasus :</u> <br> 
                1. {{$jawabanessay1->jawaban}}
              </p>
              <p><u>Nilai pilihan ganda : {{$jawaban1->nilai}}</u></p>
              <br>
              
              @if (isset($jawabanessay2))
              <b><u> Second Meeting </u></b>
              <p><u>Jawaban Studi Kasus : </u><br> 
                1. {{$jawabanessay2->jawaban}}
                2. {{$jawabanessay2->jawaban2}}
              </p>
              <p><u>Nilai pilihan ganda : {{$jawaban2->nilai}}</u></p>
              <br>
              @endif

              @if (isset($jawabanessay3))
              <b><u> Third Meeting </u></b>
              <p><u>Jawaban Studi Kasus : </u><br> 
                1. {{$jawabanessay3->jawaban}}
              </p>
              @endif
              
              @else
              <p>Belum ada data</p>
              @endif


            </div>
          </div>
        </div>


      </div>
    </div>
  </section>


@endsection
