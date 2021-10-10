<div class="sticky-top">
  <nav class="navbar">
    <div class="container-fluid">
      <form class="d-flex" action="{{ route('magic_search') }}" method="POST" id="Navbar_Search">
        @csrf
        <input class="form-control me-2" type="search" placeholder="Search" name="search" aria-label="Search">
        <button id="Nav_Bar_Search_Button" class="btn btn-outline-success" type="submit"><i class="fas fa-search"></i></button>
      </form>

      @if (isset(auth()->user()->id))

      <div class="Username">



<a href="{{ route('Fav') }}">
<span>
Favorite List
  <i class="fas fa-heart" style="padding: 0 5px;"></i>
 </span> </a>
        <span style="color: #fff;padding: 0 5px;">|</span>
        <a href="#" class="FirstNavLinks">{{ auth()->user()->name }}</a>
    <div class="User-area">
        <div class="User-avtar">
        <i class="fas fa-user User-Icon"></i>
        </div>
        <form method="POST" action="{{ route('logout') }}">
@csrf
          <ul class="User-Dropdown">
            <li><a href="#">Edit Profile</a><i class="fas fa-cog"></i></li>
            <li  id="Fav_Mobile"><a href="{{ route('Fav') }}">Favorite List</a><i class="fas fa-heart"></i></li>

            <li  id="logout"><a href="#">Logout </a><i class="fas fa-sign-out-alt"></i></li>
            <button id="logout_btn" hidden></button>
        </form>
          </ul>
      </div>

      </div>

      @else
      <div class="Registration">
        <a href="/login" class="FirstNavLinks">Login</a>
        <span id="NavSpan">|</span>
        <a href="/register" class="FirstNavLinks">Register</a>
        <i class="fas fa-user User-Icon"></i>
      </div>
      @endif
    </div>

  </nav>
  <!-- Navbar -->
  <nav class="navbar navbar-expand-lg navbar-light ">
    <a class="navbar-brand" href="../../../../">WenFee</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#mobile_nav" aria-controls="mobile_nav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="mobile_nav">
      <ul class="navbar-nav mr-auto mt-2 mt-lg-0 float-md-right">
      </ul>
      <ul class="navbar-nav navbar-light">
        <!--========-->

        <li class="nav-item dropdown megamenu-li dmenu">
          <a class="nav-link dropdown-toggle" href="" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Our Categories</a>
          <div class="dropdown-menu megamenu sm-menu border-top" aria-labelledby="dropdown01">

            <div class="row">

              @foreach ($cats as $category)
              @if($category->name!="Grocery & Gourmet Foods" and $category->name!="Cook Books")

              <div class="col-sm-6 col-lg-3 border-right mb-4">
                <h6>{{ $category->name }}</h6>
                @if (count($category->children) > 0)
                @foreach ($category->children as $child)
                <a class="dropdown-item" href="{{ route('view-category', $child->slug) }}"> {{ $child->name }}</a>
                @endforeach
                @else
                <a class="dropdown-item" href="{{ route('view-category', $category->slug) }}"> {{ $category->name }}</a>
                @endif


              </div>


              @endif
              @endforeach

            </div>
          </div>
        </li>
        <!--=========-->

        <!--========-->
        <li class="nav-item dropdown megamenu-li dmenu">
          <a class="nav-link dropdown-toggle" href="" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Grocery & Gourmet Foods</a>
          <div class="dropdown-menu megamenu sm-menu border-top" aria-labelledby="dropdown01">
            <div class="row">

              @if ($cats)
              @foreach ($cats as $item_)
              @if($item_->name=="Grocery & Gourmet Foods")
              @foreach ($item_->children as $item1)


              <div class="col-sm-6 col-lg-3 border-right mb-4">
                <h6>{{ $item1->name }}</h6>
                @if (count($item1->children) > 0)
                @foreach ($item1->children as $item2)
                <a class="dropdown-item" href="{{ route('view-category', $item2->slug) }}"> {{ $item2->name }}</a>
                @endforeach
                @else
                <a class="dropdown-item" href="{{ route('view-category', $item1->slug) }}"> {{ $item1->name }}</a>
                @endif


              </div>
              @endforeach
              @break
              @endif
              @endforeach
              @endif
            </div>
          </div>
        </li>
        <!--=========-->
        <li class="nav-item"><a class="nav-link" href="../.../../all?offer=on">Our Offers</a></li>
        <li class="nav-item"><a class="nav-link" href="{{ route('brands') }}">Brands</a></li>
        <li class="nav-item"><a class="nav-link" href="{{ route('recipes') }}">Recipes</a></li>
        {{--
        <li class="nav-item"><a class="nav-link" href="{{ route('HowToOrder') }}">How To Order</a></li>
        <li class="nav-item"><a class="nav-link" href="{{ route('ShippingInformation') }}">Shipping Information</a></li>
--}}
      </ul>
    </div>




    <!-- Basket   -->

    <div id="cd-cart-trigger">
      <a class=""></a>
      <a href="#0" class="Shopping-cart" >
        <i class="fas fa-shopping-cart"></i><small></small><span class="PurchaseValue" > {{-- comment
         $ {{ isset($_COOKIE['total'] ) ? $_COOKIE['total'] : '0' }} --}} SHOPPING CART</span>

      </a>
      <span class="total-qty">1</span>
    </div>

    <!-- Basket -->
  </nav>



</div>
<!-- End Of Navbar -->




<div id="cd-shadow-layer"></div>

<div id="cd-cart">
    <img alt="" class="hCL kVc L4E MIw" importance="auto" loading="auto" src="https://i.pinimg.com/originals/9e/91/7f/9e917f152f70800d105c76ceb7ac2b36.gif" width="550px">
</div> <!-- cd-cart -->





<!--_____________________________________________________________________-->
{{-- Navbar and slider  --}}
<script> var x =0 </script>
<script src="{{ asset('js/Navbar.js') }}   "></script>
<script src="{{ asset('js/jquery.js') }}   "></script>
<script src="{{ asset('js/bootstrap.js') }}"></script>
<script>
    $('#cd-shadow-layer').click(
        function(){
            x+=1;
        }
    );



  $('#cd-cart-trigger').click(
    function() {
        if(x % 2 == 0)
        {
            $('#cd-cart').html('<img alt="" class="hCL kVc L4E MIw" importance="auto" loading="auto" src="https://i.pinimg.com/originals/9e/91/7f/9e917f152f70800d105c76ceb7ac2b36.gif" width="550px"> <br><center> <h3>We`re calculating your bill</h3> </center>');

            $.ajax({

                url: "{{ route('maincart') }}",
                dataType: 'html',
                success: function(data) {
                     //handle data object containing the html
                     $('#cd-cart').html(data);
                },
                error: function(xhr, error){
                    $('#cd-cart').load("{{ route('maincart') }}");
                }

            });

        }

        x+=1;

    }
  );

  //logout
  $("#logout").click(function(){
    $("#logout_btn").trigger("click");
 })

</script>
