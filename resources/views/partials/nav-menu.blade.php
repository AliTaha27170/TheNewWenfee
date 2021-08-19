<div class="sticky-top">
  <nav class="navbar">
    <div class="container-fluid">
      <form class="d-flex" action="{{ route('magic_search') }}" method="POST" id="Navbar_Search">
        @csrf
        <input class="form-control me-2" type="search" placeholder="Search" name="search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit"><i class="fas fa-search"></i></button>
      </form>

      @if (isset(auth()->user()->id))

      <div class="Username">
        <i class="fas fa-user User-Icon"></i>
        <button style="
    border: 0;
    background: transparent;
    color: #fff;
    /* font-size: 17px; */
    padding: 0;">
<a href="{{ route('Fav') }}">
<span>
  Favourite List
  <i class="fas fa-heart" style="padding: 0 5px;"></i>
 </span> </a>
</button>
        <span style="color: #fff;padding: 0 5px;">|</span>
        <a href="#" class="FirstNavLinks">{{ auth()->user()->name }}</a>
        <div class="User-Menu" style="display: none;">
      <ul>
        <li><a href="#" style="display : none ;"> Account Settings<i class="fas fa-cog"></i></a></li>
        <li><a href="#" > Logout <i class="fas fa-sign-out-alt"></i></a></li>
      </ul>
    </div>
      </div>

      @else
      <div class="Registration">
        <i class="fas fa-user User-Icon"></i>
        <a href="/login" class="FirstNavLinks">Login</a>
        <span id="NavSpan">|</span>
        <a href="/register" class="FirstNavLinks">Register</a>
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
      <a href="#0" class="Shopping-cart">
        <i class="fas fa-shopping-cart"></i><small></small><span class="PurchaseValue" id="total"> $ {{ isset($_COOKIE['total'] ) ? $_COOKIE['total'] : '0' }}</span>

      </a>
      <span class="total-qty">1</span>
    </div>

    <!-- Basket -->
  </nav>



</div>
<!-- End Of Navbar -->




<div id="cd-shadow-layer"></div>

<div id="cd-cart">

</div> <!-- cd-cart -->





<!--_____________________________________________________________________-->
{{-- Navbar and slider  --}}
<script src="{{ asset('js/Navbar.js') }}   "></script>
<script src="{{ asset('js/jquery.js') }}   "></script>
<script src="{{ asset('js/bootstrap.js') }}"></script>
<script>
  $('#cd-cart-trigger').click(
    function() {
      $('#cd-cart').load("{{ route('maincart') }}");
    }
  );
</script>
