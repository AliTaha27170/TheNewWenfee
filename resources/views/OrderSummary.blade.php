@extends('layouts.app')
@section('content')
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />

    <div class="my-cart">
        <div class="row">
            <div class="col-md-12">
                <div class="shopping-cart">
                    <div class="title">
                        <h1 class="OrderSummary">Order Summary</h1>
                        <span class="OrderItems">7 Items<span>
                    </div>
                    <hr class="solid">
                    <div class="small-container cart-page">
                        <table>
                            <tr>
                                <th>PRODUCT DETAILS</th>
                                <th style="width:100px;">QUANTITY</th>
                                <th style="width:100px;">PRICE</th>
                                <th style="width:100px;">TOTAL</th>
                            </tr>
                                <tr>
                                    <td>
                                        <div class="cart-info">
                                            <img src="https://assets.bonappetit.com/photos/5c62e4a3e81bbf522a9579ce/5:4/w_2815,h_2252,c_limit/milk-bread.jpg" />
                                            <div>
                                                <p>Product Name</p>
                                                <br>
  
                                            </div>
                                        </div>
                                    </td>
                                    <td>4</td>

                                    <td>$250</td>
                                    <td>$300</td>
                                </tr>
                        </table>
                    </div>
                </div>
            </div>
       

@endsection
