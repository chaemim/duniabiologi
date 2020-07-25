@extends('master')

@section('title')
  List Modul
@endsection


  @section('content')

    <section class="bg-light" id="artikel">
      <div class="container-fluid">
        <div class="row">
          <div class="col-lg-12 text-center materi">
            <h3 class="section-heading text-uppercase">Daftar Materi</h3>
            {{-- <h3 class="section-subheading text-muted">Lorem ipsum dolor sit amet consectetur.</h3> --}}
          </div>
        </div>

        <div class="row">
            <div class="col-md-3 submodul">
                  <h5> Materi</h5>
                  @foreach ($artikel as $artikel)
                 {{-- <div class="alert alert-success">
                     <ul><a href="{{asset('/materi/' . $bab->id)}}">{{$bab->kategori}}</a></ul>     
                </div> --}}

                    <ul class="list-group listmodul">
                        <a href="{{asset('/materi/' . $artikel->slug)}}"><li class="list-group-item list-group-item-action">{{$artikel->title}}</li></a>
                    </ul>
                @endforeach
                  <h5> Soal</h5>
                @foreach ($typesoal as $typesoal)
                    <ul class="list-group listmodul">
                        <a href="{{asset('/soalessay/' . $typesoal->id)}}"><li class="list-group-item list-group-item-action">{{$typesoal->type_soal}}</li></a>
                    </ul>        
                @endforeach
            </div>

            <div class="col-md-8">
                <div class="card">
                     <div class="card-header">
                         <h4>About This Electronic Modul?</h4>
                    </div>
                        <div class="card-body">
                              <p>{!! $about->setting_value !!}</p>     
                              <h5>Peta Konsep</h5>
                              <img width="100%" height="100%" src="{{asset('img/modul.PNG')}}" alt="" srcset="">                   
                        </div>
                </div>
            </div>
        
        </div>


      </div>
    </section>

  @endsection

  @section('css')
    <style>
          .materi{
            margin-top: 30px;
            margin-bottom: 30px;
            background-color:#1fbba6 !important;
            color: #fff;
            padding: 40px;
        }

        .listmodul{
            margin: 5px 0;
        }

        .list-group:hover{
            background-color: #1fbba6;
        }

        .card{
            margin: 5px 0 ;
        }

        .submodul{
            overflow-y: scroll;
        }

        .aktif{
            background-color: #1fbba6;
            color: #fff;
        }

        .list-group-item-action:hover{
            background-color: #1fbba6;
            color: #fff;
        }
    </style>
  @endsection
