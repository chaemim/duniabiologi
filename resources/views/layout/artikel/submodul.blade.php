@extends('master')

@section('title')
  List Sub Modul
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
                 @foreach ($bab as $bab)
                 {{-- <div class="alert alert-success">
                     <ul><a href="{{asset('/materi/' . $bab->id)}}">{{$bab->kategori}}</a></ul>     
                </div> --}}

                <ul class="list-group listmodul">
                    <a href="{{asset('/materi/' . $bab->id)}}"><li class="list-group-item list-group-item-action">{{$bab->kategori}}</li></a>
                </ul>
                @endforeach
            </div>
            <div class="col-md-8">
                @foreach ($artikel as $artikel)

                    <div class="card">
                        <div class="card-body">
                            <a href="{{asset('/artikel/' . $artikel->slug)}}"><ul>{{$artikel->title}}</ul></a>
                        </div>
                    </div>
                @endforeach
                 @foreach ($typesoal as $typesoal)
                    <ul class="list-group listmodul">
                        <a href="{{asset('/soal/' . $typesoal->id)}}"><li class="list-group-item list-group-item-action">{{$typesoal->type_soal}}</li></a>
                    </ul>        
                @endforeach
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
    </style>
  @endsection
