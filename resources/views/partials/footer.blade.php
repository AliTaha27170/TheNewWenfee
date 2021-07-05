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
                <div class="contact-info-box">
                    <div class="contact-info">
                        <i class="fi fi-rr-building"></i>
                        <p>(410) 379-2267</p>
                        
                    </div>
                    <div class="contact-info">
                        <i class="fi fi-rr-envelope"></i>
                        <p>info@wenfee.com</p>
                    </div>
                </div>
                <div class="social">
                    <a href="#"><img src="{{ asset('img/facebook.svg') }}"></a>
                    <a href="#"><img src="{{ asset('img/instagram.svg') }}" /></a>
                </div>
            </div>
        </div>

        <div class="col-md-2">
            <div class="part">
                <h3>Site Map:</h3>
                <ul>
                    <li><a href="https://wenfee.com/"><i class="fi fi-rr-angle-double-small-right"></i> Home </a></li>
                    <li><a href="../.../../all?offer=on" class="offer-link"
                        onclick="event.preventDefault(); document.getElementById('offer-form').submit();"><i class="fi fi-rr-angle-double-small-right"></i>Our Offers
                    </a>
                
                </li>
                {{-- comment 
                
                    <li><a href="#"><i class="fi fi-rr-angle-double-small-right"></i> CookBooks</a></li>
                    <li><a href="#"><i class="fi fi-rr-angle-double-small-right"></i> Recipes </a></li>--}}
                </ul>
            </div>
        </div>
        <div class="col-md-2">
            <div class="part">
            <h3 style="visibility: hidden">Site Map:</h3>
                <ul>
                    <li><a href="https://wenfee.com/contact"><i class="fi fi-rr-angle-double-small-right"></i> Contact Us</a></li>
                    <li><a href="https://wenfee.com/about"><i class="fi fi-rr-angle-double-small-right"></i> About Us</a></li>
                    {{-- comment 
                    
                    <li><a href="#"><i class="fi fi-rr-angle-double-small-right"></i> Privacy Policy</a></li>--}}
                </ul>
            </div>
        </div>

        <div class="col-md-4">

            <div class="part">
                <h3>Contact Us</h3>
                <form action="" class="contact-form">
                    <input class="input1" placeholder="Your Email Address" /><br>
                    <textarea class="input1" placeholder="Your Message"></textarea>
                    <div class="ta-r">
                        <button class="mbtn">
                            <i class="fi fi-rr-paper-plane"></i> &nbsp;Send
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <div class="copy-right">
        <p>Wenfee - All Rights Reserved © 2021</p>
    </div>
</footer>
