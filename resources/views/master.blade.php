

<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>@yield('title')</title>
    <link rel="shortcut icon" href="img/ds.png">
    <!-- Bootstrap core CSS -->
    <link href="{{asset('bootstrap/css/bootstrap.min.css')}}" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="{{asset('font-awesome/css/font-awesome.min.css')}}" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>

    <!-- Custom styles for this template -->
    <link href="{{asset('css/template.css')}}" rel="stylesheet">
    <link href="{{asset('css/style.css')}}" rel="stylesheet">
    @yield('css')
    <script src="{{asset('tinymce/tinymce.min.js')}}"></script>
  </head>

  <body id="page-top">

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
      <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="{{route('home')}}" id="judul">Dunia Biologi</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          Menu
          <i class="fa fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav text-uppercase ml-auto">

            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="{{route('materi')}}">Materi</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="{{route('video')}}">Video</a>
            </li>


            {{-- <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="{{asset('/auth/register')}}">Sign Up</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="{{asset('/auth/login')}}">Log In</a>
            </li> --}}

            @if(Auth::check())
              {{-- <li class="nav-item">
                <a class="nav-link js-scroll-trigger" href="{{route('profil')}}">Profil</a>
              </li> --}}


              

              <li class="nav-item dropdown">
                <a class="nav-link js-scroll-trigger dropdown-toggle" data-toggle="dropdown"  role="button" href="#">{{ Auth::user()->name }}<span class="caret"></a>
                  <ul class="nav-item js-scroll-trigger dropdown-menu" role="menu">
                      <li>
                          <a href="{{asset('auth/logout')}}">
                              Logout
                          </a>
                      </li>
                  </ul>
              </li>

              @if (Auth::user()->role == 2)
                <li class="nav-item">
                  <a class="nav-link js-scroll-trigger" href="{{asset('/admin/dashboard')}}">Admin</a>
                </li>
              @endif

            @else
              <li class="nav-item">
                <a class="nav-link js-scroll-trigger" href="{{asset('/auth/register')}}">Sign Up</a>
              </li>
              <li class="nav-item">
                <a class="nav-link js-scroll-trigger" href="{{asset('/auth/login')}}">Log In</a>
              </li>
            @endif



            {{-- @guest
              <li class="nav-item">
                <a class="nav-link js-scroll-trigger" href="{{asset('/auth/register')}}">Sign Up</a>
              </li>
              <li class="nav-item">
                <a class="nav-link js-scroll-trigger" href="{{asset('/auth/login')}}">Log In</a>
              </li>
              @else
                <li class="nav-item">
                  <a class="nav-link js-scroll-trigger" href="">{{ Auth::user()->name }}</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link js-scroll-trigger" href="{{asset('/auth/logout')}}">Log Out</a>
                </li>

                    {{-- <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                                {{ Auth::user()->name }} <span class="caret"></span>
                              </a>
                               <ul class="dropdown-menu" role="menu">
                                   <li>
                                       <a href="{{ route('logout') }}"
                                           onclick="event.preventDefault();
                                                    document.getElementById('logout-form').submit();">
                                           Logout
                                       </a>

                                       <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                           {{ csrf_field() }}
                                       </form>
                                   </li>
                               </ul>
                           </li> --}}
                  {{-- @endguest --}}

          </ul>
        </div>
      </div>
    </nav>

  @yield('content')



    <!-- Footer -->
    <footer>
      <div class="container">
        <div class="row">
          <div class="col-md-4">
            <span class="copyright">Copyright &copy; Ayu Mega Musthofa 2019</span>
          </div>
          <div class="col-md-4">
            <ul class="list-inline social-buttons">
              {{-- <li class="list-inline-item">
                <a href="#">
                  <i class="fa fa-twitter"></i>
                </a>
              </li>
              <li class="list-inline-item">
                <a href="#">
                  <i class="fa fa-facebook"></i>
                </a>
              </li>
              <li class="list-inline-item">
                <a href="#">
                  <i class="fa fa-linkedin"></i>
                </a>
              </li> --}}
            </ul>
          </div>
          <div class="col-md-4">
            <ul class="list-inline quicklinks">
              <li class="list-inline-item">
                <a href="#">Sistem Reproduksi</a>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </footer>


        <!-- Bootstrap core JavaScript -->
        <script src="{{asset('jquery/jquery.min.js')}}"></script>
        <script src="{{asset('bootstrap/js/bootstrap.bundle.min.js')}}"></script>

        <!-- Plugin JavaScript -->
        <script src="{{asset('jquery-easing/jquery.easing.min.js')}}"></script>

        <!-- Contact form JavaScript -->
        <script src="{{asset('js/jqBootstrapValidation.js')}}"></script>

        <!-- Custom scripts for this template -->
        <script src="{{asset('js/template.min.js')}}"></script>
        @yield('script')

      </body>

    </html>
