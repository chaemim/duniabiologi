@extends('layout/admin/admin')

@section('title')
  Setting
@endsection

@section('header')
  Setting
@endsection

@section('breadcrumb')
  Setting
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
              <h3 class="h4">Setting</h3>
            </div>
            <div class="card-body">
              <table class="table table-striped table-hover">
                <thead>
                  <tr>
                    <th>id</th>
                    <th>Title</th>
                    <th>Deksripsi</th>
                    <th>Action</th>
                  </tr>
                </thead>
                <tbody>

                  @foreach ($setting as $setting)
                    <tr>
                      <th scope="row">{{$setting->id}}</th>
                      <td>{{$setting->setting_name}}</td>
                      <td>{!! \Illuminate\Support\Str::words($setting->setting_value , 7,' ....') !!}</td>
  
                      <td> <a href="{{asset('setting/' . $setting->slug)}}">
                              <span class="label label-primary"><i class="fa fa-eye"> Lihat </i></span></a>
                        <a href="{{asset('/admin/setting/'.$setting->id.'/edit')}}">
                              <span class="label label-warning"><i class="fa fa-edit"> Edit </i></span></a>
                            {{-- <a href="{{action('SettingController@destroy' ,[$setting->id])}}">
                            <span class="label label-danger"><i class="fa fa-trash"> Delete </i></span>
                            </a> --}}
                    </tr>
                  @endforeach
                </tbody>
              </table>

            </div>
          </div>
        </div>


      </div>
    </div>
  </section>
@endsection