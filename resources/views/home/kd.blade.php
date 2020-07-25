@extends('master')

@section('title')
  Halaman Kompetensi Dasar dan Tujuan Pembelajaran
@endsection


@section('content')

<section class="bg-light" id="artikel">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 text-center">
            <h3 id="kd" class="section-heading text-uppercase">Standar Kompetensi dan Tujuan Pembelajaran</h3>
            {{-- <h3 class="section-subheading text-muted">Lorem ipsum dolor sit amet consectetur.</h3> --}}
          </div>
        </div>

        <div class="row">
            <br><br>
            <div>
                <h4>Kompetensi Dasar</h4>
                <p>{!! $kd->setting_value !!}</p>
            </div>
            <br>
             <div>
                 <h4>Tujuan Pembelajaran</h4>
                 <p>{!! $tujuan->setting_value !!}</p>
             </div>

        </div>
      </div>
    </section>
   

@endsection

@section('css')
    <style>
        /* #artikel{
            background-color: white !important;
        } */

        #kd{
            margin-top: 50px;
            margin-bottom: 30px;
        }

    </style>
@endsection