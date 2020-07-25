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
                         <h4>Hasil</h4>
                    </div>
                        <div class="card-body">
                            {{-- <p>{{$jawaban->jwb1}}</p> --}}
                            <?php 
                                $no = 1;
                                $n = 0;
                                ?>   
                         @foreach ($soal as $soal)
                                    <?php $n++ ?>
                                <p><b>{{$no++}}.</b>  {!!$soal->pertanyaan!!}</p>
                                    jawaban anda : <br>
                                    @if ($n == 1)
                                    <b>{{$jawaban->jwb1}}. 
                                        @if ($jawaban->jwb1 == 'A')
                                            {{$soal->a}}
                                        @elseif($jawaban->jwb1 == 'B')
                                            {{$soal->b}}
                                        @elseif($jawaban->jwb1 == 'C')
                                            {{$soal->c}}
                                        @elseif($jawaban->jwb1 == 'D')
                                            {{$soal->d}}
                                        @elseif($jawaban->jwb1 == 'E')
                                            {{$soal->e}}                                        
                                        @endif
                                    </b>
                                    
                                    @elseif($n == 2)
                                    <b>{{$jawaban->jwb2}}. 
                                        @if ($jawaban->jwb2 == 'A')
                                            {{$soal->a}}
                                        @elseif($jawaban->jwb2 == 'B')
                                            {{$soal->b}}
                                        @elseif($jawaban->jwb2 == 'C')
                                            {{$soal->c}}
                                        @elseif($jawaban->jwb2 == 'D')
                                            {{$soal->d}}
                                        @elseif($jawaban->jwb2 == 'E')
                                            {{$soal->e}}                                        
                                        @endif
                                    </b>
                                     @elseif($n == 3)
                                    <b>{{$jawaban->jwb3}}. 
                                        @if ($jawaban->jwb3 == 'A')
                                            {{$soal->a}}
                                        @elseif($jawaban->jwb3 == 'B')
                                            {{$soal->b}}
                                        @elseif($jawaban->jwb3 == 'C')
                                            {{$soal->c}}
                                        @elseif($jawaban->jwb3 == 'D')
                                            {{$soal->d}}
                                        @elseif($jawaban->jwb3 == 'E')
                                            {{$soal->e}}                                        
                                        @endif
                                    </b>
                                     @elseif($n == 4)
                                    <b>{{$jawaban->jwb4}}. 
                                        @if ($jawaban->jwb4 == 'A')
                                            {{$soal->a}}
                                        @elseif($jawaban->jwb4 == 'B')
                                            {{$soal->b}}
                                        @elseif($jawaban->jwb4 == 'C')
                                            {{$soal->c}}
                                        @elseif($jawaban->jwb4 == 'D')
                                            {{$soal->d}}
                                        @elseif($jawaban->jwb4 == 'E')
                                            {{$soal->e}}                                        
                                        @endif
                                    </b>
                                     @elseif($n == 5)
                                    <b>{{$jawaban->jwb5}}. 
                                        @if ($jawaban->jwb5 == 'A')
                                            {{$soal->a}}
                                        @elseif($jawaban->jwb5 == 'B')
                                            {{$soal->b}}
                                        @elseif($jawaban->jwb5 == 'C')
                                            {{$soal->c}}
                                        @elseif($jawaban->jwb5 == 'D')
                                            {{$soal->d}}
                                        @elseif($jawaban->jwb5 == 'E')
                                            {{$soal->e}}                                        
                                        @endif
                                    </b>
                                    @endif

                                    <br>
                                    Jawaban yang benar : <br>
                                     @if ($n == 1)
                                    <b>{{$soal->jawaban}}. 
                                        @if ($soal->jawaban == 'A')
                                            {{$soal->a}}
                                        @elseif($soal->jawaban == 'B')
                                            {{$soal->b}}
                                        @elseif($soal->jawaban == 'C')
                                            {{$soal->c}}
                                        @elseif($soal->jawaban == 'D')
                                            {{$soal->d}}
                                        @elseif($soal->jawaban == 'E')
                                            {{$soal->e}}                                        
                                        @endif
                                    </b>
                                    
                                    @elseif($n == 2)
                                    <b>{{$soal->jawaban}}. 
                                        @if ($soal->jawaban == 'A')
                                            {{$soal->a}}
                                        @elseif($soal->jawaban == 'B')
                                            {{$soal->b}}
                                        @elseif($soal->jawaban == 'C')
                                            {{$soal->c}}
                                        @elseif($soal->jawaban == 'D')
                                            {{$soal->d}}
                                        @elseif($soal->jawaban == 'E')
                                            {{$soal->e}}                                        
                                        @endif
                                    </b>
                                     @elseif($n == 3)
                                    <b>{{$soal->jawaban}}. 
                                        @if ($soal->jawaban == 'A')
                                            {{$soal->a}}
                                        @elseif($soal->jawaban == 'B')
                                            {{$soal->b}}
                                        @elseif($soal->jawaban == 'C')
                                            {{$soal->c}}
                                        @elseif($soal->jawaban == 'D')
                                            {{$soal->d}}
                                        @elseif($soal->jawaban == 'E')
                                            {{$soal->e}}                                        
                                        @endif
                                    </b>
                                     @elseif($n == 4)
                                    <b>{{$soal->jawaban}}. 
                                        @if ($soal->jawaban == 'A')
                                            {{$soal->a}}
                                        @elseif($soal->jawaban == 'B')
                                            {{$soal->b}}
                                        @elseif($soal->jawaban == 'C')
                                            {{$soal->c}}
                                        @elseif($soal->jawaban == 'D')
                                            {{$soal->d}}
                                        @elseif($soal->jawaban == 'E')
                                            {{$soal->e}}                                        
                                        @endif
                                    </b>
                                     @elseif($n == 5)
                                    <b>{{$soal->jawaban}}. 
                                        @if ($soal->jawaban == 'A')
                                            {{$soal->a}}
                                        @elseif($soal->jawaban == 'B')
                                            {{$soal->b}}
                                        @elseif($soal->jawaban == 'C')
                                            {{$soal->c}}
                                        @elseif($soal->jawaban == 'D')
                                            {{$soal->d}}
                                        @elseif($soal->jawaban == 'E')
                                            {{$soal->e}}                                        
                                        @endif
                                    </b>
                                    @endif
                                    
                                    
                                    <br><br>
                                    @endforeach
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
