
<section class="container BrandsSection">
        <h2>Our Brands</h2>
    <div class="BrandsSlider">
        @foreach($brands as $brand)
        <div class="Brands-item">
            <a href="/brand/{{$brand->slug}}">
                <img src="https://wenfee.com/strorge/{{ $brand->logo}}" alt="BrandLogo">
            </a>
        </div>
        @endforeach