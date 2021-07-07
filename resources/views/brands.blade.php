@extends('layouts.app')

@section('content')
    <link rel="stylesheet" href="/css/wrunner-default-theme.css">
    <script src="/libs/wrunner/wrunner-native.js"></script>

    <div class="product-page">
        <div class="row">

            <div class="col-md-3">
                <form id="search-form" action="{{ route('viewall') }}" method="GET">

                    <div class="left-panel">
                        <h2>Category</h2>
                        <div class="select">
                            <select name="slug">
                                <option value="">All Categories</option>
                               

                            </select>
                            <div class="select__arrow"></div>
                        </div>

                        <h2>Price</h2>
                        <input hidden name="maxPrice" value="{{ request()->maxPrice ? request()->maxPrice : 100 }}"
                            type="text" id="maxPrice">
                        <input hidden name="minPrice" value="{{ request()->minPrice ? request()->minPrice : 0 }}"
                            type="text" id="minPrice">

                        <div class="my-js-slider"></div>
                        <br>
                        <h2>Offer/Discount </h2>
                        <input type="checkbox" name="offer" {{ request()->offer ? 'checked' : '' }} id="box-1">
                        <label for="box-1">Offer</label>
                    </div>
                </form>
            </div>

       
            
                </div>
            </div>

@endsection

@push('styles')
    <style>
        /*Pagination*/
        .pagination-div {
            margin-top: 40px;
        }

        .pagination-div .pagination {
            display: block;
            margin-bottom: 0px;
            list-style-type: none;
            -webkit-box-align: center;
            -ms-flex-align: center;
            align-items: center;
        }

        .pagination-div .pagination li {
            display: inline-block;
            color: #0056b3;
        }

        .pagination-div .pagination li a {
            font-family: "Futura-Bold", sans-serif;
            font-size: 14px;
            background: #ffffff;
            border: 1px solid #ffffff;
            display: inline-block;
            text-align: center;
            height: 30px;
            /* line-height: 26px; */
            font-weight: 500;
            letter-spacing: 1px;
        }

        .pagination-div .pagination li a:hover {
            color: #000;
        }

        .pagination-div .pagination li a i {
            margin: 0px 5px;
        }

        .pagination-div .pagination li a.page-number {
            width: 30px;
            border-radius: 100%;
            color: #0056b3;
        }

        .pagination-div .pagination li a.page-number.current {
            background: #0056b3;
            border: 1px solid #0056b3;
            color: #ffffff;
        }

        /*Pagination*/
            .carousel{
                display: none;
            }
     
    </style>
@endpush
