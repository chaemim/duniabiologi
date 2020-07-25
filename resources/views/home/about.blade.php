@extends('master')

@section('title')
  Halaman Kompetensi Dasar dan Tujuan Pembelajaran
@endsection


@section('content')

<section class="bg-light" id="artikel">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 text-center">
            <h3 id="kd" class="section-heading text-uppercase">About This Electronic Module?</h3>
            {{-- <h3 class="section-subheading text-muted">Lorem ipsum dolor sit amet consectetur.</h3> --}}
          </div>
        </div>

        <div class="row">
            <br><br>
            {{-- <h4>Kompetensi Dasar</h4> --}}
            <p>{!! $about->setting_value !!}</p>

            <h5>Peta Konsep</h5>
            <img src="{{asset('img/modul.PNG')}}" alt="" srcset="">

        </div>
      </div>
    </section>
   

@endsection

@section('css')
    <style>
        #artikel{
            /* background-color: #02ffbf !important; */
            /* background-image: url('img/banner.jpg'); */
            /* color: white; */
        }

        #kd{
            margin-top: 50px;
            margin-bottom: 30px;
        }

        h5{
            margin-top: 10px;
        }
        img{
            margin-top: 50px;
        }

    </style>
@endsection