@extends('layout/admin/admin')

@section('title')
  Hasil
@endsection

@section('header')
  Hasil
@endsection

@section('breadcrumb')
  Hasil
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


        {{-- <form class="form-inline offset-md-7" id="pencarian" action="{{asset('/admin/artikel/search')}}" method="post" enctype="multipart/form-data">
             {{ csrf_field() }}
                <div class="form-group">
                  <input type="text" placeholder="Cari" name="pencarian" class="mx-sm-3 form-control">
                </div>
                    <button type="submit" name="Submit" class="btn btn-primary">Search</button>
              </form> --}}


        <div class="col-lg-12">
          <div class="card">
            <div class="card-close">
              <div class="dropdown">
                <button type="button" id="closeCard" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-ellipsis-v"></i></button>
                <div aria-labelledby="closeCard" class="dropdown-menu has-shadow"><a href="#" class="dropdown-item remove"> <i class="fa fa-times"></i>Close</a><a href="#" class="dropdown-item edit"> <i class="fa fa-gear"></i>Edit</a></div>
              </div>
            </div>
            <div class="card-header d-flex align-items-center">
              <h3 class="h4">Hasil</h3>
                {{-- <a href="{{asset('/admin/artikel/tambah')}}" class="btn btn-default" id="postbaru">Post Baru</a> --}}
            </div>
            <div class="card-body">
              <table class="table table-striped table-hover">
                <thead>
                  <tr>
                    <th>No</th>
                    <th>Nama</th>
                    <th>Hasil</th>
                    {{-- <th>Action</th> --}}
                  </tr>
                </thead>
                <tbody>
                    <?php
                        $no = 1;
                        ?>

                    @foreach ($user as $user)
                    <tr>
                    <td>{{$no++}}</td>
                    <td>{{$user->name}}</td>
                    <td><a href="/admin/hasil/{{$user->id}}" class="btn btn-sm btn-primary">Lihat Hasil</a></td>
                    </tr>
                    @endforeach
               
                </tbody>
              </table>
              {{-- <div class="row">
                <div class="col-md-6">
                  {!! $chart->render() !!}
                </div>

                <div class="col-md-6">
                  {!! $chart1->render() !!}
                </div>
              </div> --}}

            </div>
          </div>
        </div>


      </div>
    </div>
  </section>


@endsection
