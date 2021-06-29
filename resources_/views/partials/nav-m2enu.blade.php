<nav class='nav is-scrolled'>
    <div class="search-box">
        <form action="{{ route('viewall') }}" method="GET">
            <input placeholder="What are you looking for.." name="keyword" type="text" class="input">
            <button type="submit"><i class="fi fi-rr-search"></i></button>
        </form>
        <button class="close"><i class="fi fi-rr-cross"></i></button>
    </div>
    <div class="left-nav">

        <a href="/">
            <img class='logo' src="{{ asset('img/logo.png') }}" />
        </a>
        <div class='category'>
            <ul class="menu">
                <li class="my-products-li">
                    <a href="#">
                        Our Categories
                        <img src="{{ asset('img/down-chevron.svg') }}" class="arrow">
                    </a>
                    <div class="big-drop">
                        <div class="left">
                            <div class="cats">
                                @if ($cats)
                                    @foreach ($cats as $item)
                                    @if($item->name!="Grocery & Gourmet Foods" and $item->name!="Cook Books")
                                        <div class="main-item">
                                            <div class="main-link">
                                                <a href="#">
                                                    <span>
                                                         
                                                        <b>{{ $item->name }}</b>
                                                    </span>
                                                    <i class="fi fi-rr-angle-small-right"></i>
                                                </a>
                                                @if (count($item->children) > 0)
                                                    <div class="subs-box">
                                                        @foreach ($item->children as $child)
                                                            <a href="{{ route('view-category', $child->slug) }}">
                                                                {{ $child->name }}
                                                            </a>
                                                        @endforeach
                                                    </div>
                                                @endif
                                            </div>
                                        </div>
                                        @endif
                                    @endforeach
                                @endif
                            </div>
                            <div>
                                <a href="#" class="view-all">View All Categories</a>
                            </div>
                        </div>

                        <div class="right">
                            <img src="{{ asset('img/logog.png') }}" class="thumb-img">
                        </div>
                    </div>
                </li>

                <li class="my-products-li">
                    <a href="#">
                        Grocery & Gourmet Foods
                        <img src="{{ asset('img/down-chevron.svg') }}" class="arrow">
                    </a>
                    <div class="big-drop">
                        <div class="left">
                            <div class="cats">
                                @if ($cats)
                                    @foreach ($cats as $item_)
                                    @if($item_->name=="Grocery & Gourmet Foods")
                                    @foreach ($item_->children as $item)
                                        
        


                                        <div class="main-item">
                                            <div class="main-link">
                                                <a href="#">
                                                    <span>
                                                         
                                                        <b>{{ $item->name }}</b>
                                                    </span>
                                                    <i class="fi fi-rr-angle-small-right"></i>
                                                </a>
                                                @if (count($item->children) > 0)
                                                    <div class="subs-box">
                                                        @foreach ($item->children as $child)
                                                            <a href="{{ route('view-category', $child->slug) }}">
                                                                {{ $child->name }}
                                                            </a>
                                                        @endforeach
                                                    </div>
                                               
                                                @else
                                                <div class="subs-box">
                                                <a href="{{ route('view-category', $item->slug) }}">
                                                    {{ $item->name }}
                                                </a>
                                                </div>
                                                @endif
                                            </div>
                                        </div>
                                        @endforeach
                                        @endif
                                    @endforeach
                                @endif
                            </div>
                            <div>
                                <a href="#" class="view-all">View All Categories</a>
                            </div>
                        </div>

                        <div class="right">
                            <img src="{{ asset('img/logog.png') }}" class="thumb-img">
                        </div>
                    </div>
                </li>


                <li>
                    <a href="{{ route('viewall') }}" class="offer-link"
                        onclick="event.preventDefault(); document.getElementById('offer-form').submit();">Our Offers
                    </a>
                    <form id="offer-form" action="{{ route('viewall') }}" method="GET" style="display: none;">
                        <input type="hidden" name="offer" value="on">
                    </form>
                </li>
                {{-- comment 
                
                <li>
                    <a href="#">Cookbooks</a>
                </li>
                <li>
                    <a href="/recipes">Recipes</a>
                </li>--}}
                <li>
                    <a href="../../../../about">Who We Are</a>
                </li>
                <li>
                    <a href="../../../../contact">Contact Us</a>
                </li>
            </ul>
        </div>
    </div>
    <div class="right-nav">
        <ul class="links">
            <li>
                {{--  <a class="link-a" href="">Sign In</a> --}}
                
               
            </li>
            <li>
                {{--   <a class="scart ico" href="{{ route('cart.index') }}">
                    <i class="fi fi-rr-shopping-cart"></i>
                    <span>{{ Cart::count() > 0 ? Cart::count() : 0 }}</span>
                </a>
                 --}}
                

                                 <a class="scart ico" href="https://wenfeeusa.americommerce.com/store/shopcart.aspx" target="_blank">
                    <i class="fi fi-rr-shopping-cart"></i>
                
                </a>
            
              
            </li>
            <li>
                <a class="search ico">
                    <i class="fi fi-rr-heart"></i>
                </a>
            </li>
            <li>
                <a class="search ico">
                    <i class="fi fi-rr-search"></i>
                </a>
            </li>
        </ul>
    </div>
</nav>
<div class="coverer"></div>
