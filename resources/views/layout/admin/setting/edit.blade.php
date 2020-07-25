@extends('layout/admin/admin')

@section('title')
  Edit Setting
@endsection

@section('header')
  Edit Setting
@endsection

@section('breadcrumb')
  Edit Setting
@endsection

@section('content')
    
  <section class="forms">
    <div class="container-fluid">
      <div class="row">

        <!-- Form Elements -->
        <div class="col-lg-12">
          <div class="card">
            <div class="card-close">
              <div class="dropdown">
                <button type="button" id="closeCard" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-ellipsis-v"></i></button>
                <div aria-labelledby="closeCard" class="dropdown-menu has-shadow"><a href="#" class="dropdown-item remove"> <i class="fa fa-times"></i>Close</a><a href="#" class="dropdown-item edit"> <i class="fa fa-gear"></i>Edit</a></div>
              </div>
            </div>
            <div class="card-header d-flex align-items-center">
              <h3 class="h4">Edit Setting {{$setting->setting_name}}</h3>
            </div>
            <div class="card-body">

              <form class="form-horizontal" action="{{asset('/admin/setting/'.$setting->id.'/save')}}" method="post" enctype="multipart/form-data">
                   <input type="hidden" name="_method" value="PUT">
                   {{ csrf_field() }}

                  {{-- @if ($errors->has('title'))
                   <div class="form-group row has-danger">
                    <label class="col-sm-3 form-control-label">Title</label>
                    <div class="col-sm-9">
                      <input type="text" class="form-control" name="setting_name" value="{{old('setting_name')}}" placeholder="{{$errors->first('setting_name')}}">
                    </div>
                  @else
                    <div class="form-group row">
                    <label class="col-sm-3 form-control-label">Title</label>
                    <div class="col-sm-9">
                      <input type="text" class="form-control" name="setting_name" value="{{$setting->setting_name}}">
                    </div>
                  @endif

                </div> --}}


                @if ($errors->has('deskripsi'))
                  <div class="form-group row has-danger">
                    <label class="col-sm-3 form-control-label">Deksripsi</label>
                    <div class="col-sm-9">
                      <textarea name="setting_value" class="form-control" rows="8" cols="80" placeholder="{{$errors->first('setting_value')}}"></textarea>
                    </div>
                  </div>
                @else
                  <div class="form-group row">
                    <label class="col-sm-3 form-control-label">Deksripsi</label>
                    <div class="col-sm-9">
                      <textarea name="setting_value" class="form-control" rows="8" cols="80">{{$setting->setting_value}}</textarea>
                    </div>
                  </div>
                @endif


               

                <div class="line"></div>
                <div class="form-group row">
                  <div class="col-sm-4 offset-sm-3">
                    <a href="{{asset('/admin/setting')}}"class="btn btn-secondary">Cancel</a>
                    <button type="submit" class="btn btn-primary">Save changes</button>
                  </div>
                </div>
              </form>
            </div>

          </div>
        </div>
      </div>
    </div>
  </section>

  <script type="text/javascript">
    tinymce.init({
    selector : "textarea",
     plugins : ["advlist autolink lists link image charmap print preview anchor", "searchreplace visualblocks code fullscreen", "insertdatetime media table contextmenu paste"],
     toolbar : "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image",
     image_advtab: true ,
    });
  </script>
@endsection
