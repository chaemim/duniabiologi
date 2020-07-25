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
                    @if ($typesoal->id == $a->type_soal)
                        <ul class="list-group listmodul aktif">
                        <a href="{{asset('/soalessay/' . $typesoal->id)}}"><li class="list-group-item list-group-item-action aktif">{{$typesoal->type_soal}}</li></a>
                        </ul>  
                    @else
                        <ul class="list-group listmodul">
                        <a href="{{asset('/soalessay/' . $typesoal->id)}}"><li class="list-group-item list-group-item-action">{{$typesoal->type_soal}}</li></a>
                        </ul>  
                    @endif
                      
                @endforeach
            </div>

            <div class="col-md-8">
               
                 <div class="card">
                     <div class="card-header">
                         <h4>Pertanyaan</h4>
                    </div>
                        <div class="card-body">
                            <?php 
                                $no = 1
                                ?>           
                            @foreach ($soal as $soal)
                                <p><b>{{$no++}}.</b>  {!!$soal->pertanyaan!!}</p>
                                <form action="/soal/simpan" method="POST" class="">
                                    {{ csrf_field() }}
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="id{{$soal->id}}" id="" value="A" checked>
                                        <label class="form-check-label" for="1">
                                            {{$soal->a}}
                                        </label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="id{{$soal->id}}" id="" value="B">
                                        <label class="form-check-label" for="1">
                                            {{$soal->b}}
                                        </label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="id{{$soal->id}}" id="" value="C">
                                        <label class="form-check-label" for="1">
                                            {{$soal->c}}
                                        </label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="id{{$soal->id}}" id="" value="D">
                                        <label class="form-check-label" for="1">
                                            {{$soal->d}}
                                        </label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="id{{$soal->id}}" id="" value="E">
                                        <label class="form-check-label" for="exampleRadios1">
                                            {{$soal->e}}
                                        </label>
                                    </div>
                                    {{-- <input type="radio" name="jawaban" id="jawaban" value="a">{{$soal->a}} <br>
                                    <input type="radio" name="jawaban" id="jawaban" value="b">{{$soal->b}} <br>
                                    <input type="radio" name="jawaban" id="jawaban" value="c">{{$soal->c}} <br>
                                    <input type="radio" name="jawaban" id="jawaban" value="d">{{$soal->d}} <br>
                                    <input type="radio" name="jawaban" id="jawaban" value="e">{{$soal->e}} <br> --}}

                                    @endforeach
                                    
                                    <input type="hidden" name="tipesoal" value="{{$soal->type_soal}}">
                                    <input type="hidden" name="id_user" id="" value="{{Auth::user()->id}}">
                                    <input type="hidden" name="id_soal" id="" value="1">
                                    <input type="submit" value="Kirim Jawaban" class="btn btn-primary">
                                </form>                                
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

        #jawaban{
            margin-left: 15px;
            margin-bottom: 10px;
        }

        .form-check{
            margin-left: 40px;
        }

        .btn-primary{
            background-color: #1fbba6;
            border: #1fbba6;
        }

        .btn-primary:hover{
            background-color: #1fbba6;
            border: 1px solid #1fbba6;
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
