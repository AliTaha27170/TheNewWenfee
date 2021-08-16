<footer class="footer">
    <div class="row">
        <div class="col-md-4">
            <div class="part">
                <img class="logo" src="{{ asset('img/logo.png') }}">
                <!--
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusamus eius obcaecati veritatis!
                    Dolore,
                    ipsam sit!</p>
                -->
                @foreach($contacts as $contact)
                <div class="contact-info-box">
                    <div class="contact-info">
                        <i class="fi fi-rr-building"></i>
                        <p>{{$contact->phone}}</p>
                        
                    </div>
                    <div class="contact-info">
                        <i class="fi fi-rr-envelope"></i>
                        <p>{{$contact->mail}}</p>
                    </div>
                </div>
                <div class="social">
                    <a href="{{$contact->facebook}}"><img src="{{ asset('img/facebook.svg') }}"></a>
                    <a href="{{$contact->instagram}}"><img src="{{ asset('img/instagram.svg') }}" /></a>
                </div>
            </div>
        </div>
@endforeach 
        <div class="col-md-2">
            <div class="part">
                <h3>Site Map:</h3>
                <ul>
                    <li><a href="https://wenfee.com/"><i class="fi fi-rr-angle-double-small-right"></i> Home </a></li>
                    <li><a href="../.../../all?offer=on" class="offer-link"
                        ><i class="fi fi-rr-angle-double-small-right"></i>Our Offers
                    </a>
                
                </li>
                <li><a href="{{ route('HowToOrder') }}"><i class="fi fi-rr-angle-double-small-right"></i> How To Order </a></li>
                <li><a href="{{ route('brands') }}"><i class="fi fi-rr-angle-double-small-right"></i> Brands </a></li>
                {{-- comment 
                
                    <li><a href="#"><i class="fi fi-rr-angle-double-small-right"></i> CookBooks</a></li>
                --}}
                </ul>
            </div>
        </div>
        <div class="col-md-2">
            <div class="part">
            <h3 style="visibility: hidden">Site Map:</h3>
                <ul>
                    <li><a href="{{ route('contact') }}"><i class="fi fi-rr-angle-double-small-right"></i> Contact Us</a></li>
                    <li><a href="{{ route('about') }}"><i class="fi fi-rr-angle-double-small-right"></i> About Us</a></li>
                    <li><a href="{{ route('ShippingInformation') }}"><i class="fi fi-rr-angle-double-small-right"></i> Shipping Information</a></li>
                    <li><a href="{{ route('recipes') }}"><i class="fi fi-rr-angle-double-small-right"></i> Recipes </a></li>
                    {{-- comment 
                    
                    <li><a href="#"><i class="fi fi-rr-angle-double-small-right"></i> Privacy Policy</a></li>--}}
                </ul>
            </div>
        </div>
                    </div>
        

    <div class="copy-right">
        <p>Wenfee - All Rights Reserved © 2021</p>
    </div>
</footer>
