@extends('layouts.app')
@section('content')

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />

    <div class="my-cart">
        <div class="row">
            <div class="col-md-8">
                <div class="shopping-cart">
                    <div class="title">
                        <h1>Shopping Cart</h1>
                        <h2>{{ Cart::count() > 0 ? Cart::count() : 0 }} Items</h2>
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
                            @foreach (Cart::instance('default')->content() as $item)
                                <tr>
                                    <td>
                                        <div class="cart-info">
                                            <img src="{{ Voyager::image($item->model->thumbnail('cropped')) }}" />
                                            <div>
                                                <p>{{ $item->model->name }}</p>

                                                <br>
                                                <form action="{{ route('cart.destroy', $item->rowId) }}" method="POST">
                                                    {{ csrf_field() }}
                                                    {{ method_field('DELETE') }}
                                                    <button type="submit" class="cart-options">Remove</button>
                                                </form>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="counter">
                                        <button id="plus-btn">&#43;</button>
                                        <input value="{{ $item->qty }}" data-id="{{ $item->rowId }}">
                                        <button id="minus-btn">&#8722;</button>
                                    </td>

                                    <td>${{ $item->price }}</td>
                                    <td>${{ $item->total() }}</td>
                                </tr>
                            @endforeach
                        </table>
                    </div>

                </div>
            </div>
            <div class="col-md-4">
                <div class="Order-Summary">
                    <h2 style="padding: 12px;">Order Summary</h2>
                    <hr class="solid">
                    <div class="i">
                        <p>Items {{ Cart::count() > 0 ? Cart::count() : 0 }}</p>
                        <p>${{ Cart::subtotal() }}</p>
                    </div>
                    <div class="zip">
                        <p>Zip Code</p>
                        <input placeholder="Enter your code" />
                        <button class="apply">Apply Code</button>
                    </div>
                    <div class="coupon">
                        <p>Coupon Code<small style="color: #999;"> (if you have one, Enter it please)</small></p>
                        <input placeholder="Enter your Coupon Code" />
                        <button class="apply">Apply Code</button>
                    </div>
                    <div class="i">
                        <p>Tax</p>
                        <p>${{ Cart::tax() }}</p>
                    </div>
                    <div class="i">
                        <p style="width: 50%;">Shipping - Ground Shipping <small style="color: #999;">(Wenfee - UPS -
                                USPS)(58.00 lbs.)</small></p>
                        <p>$0.00</p>
                    </div>
                    <hr class="solid">
                    <div class="i">
                        <p>Estimated Total</p>
                        <p>${{ Cart::total() }}</p>
                    </div>
                    <a href="#checkout-modal" rel="modal:open" class="checkout">CHECKOUT</a>
                </div>
            </div>
        </div>

        <div id="checkout-modal" class="modal">
            <h2>Choose Your Pay Method</h2>
            <button onclick="location.href='{{ route('checkout') }}'" class="cash-btn">
                <img src="{{ asset('img/cash-payment.svg') }}">
                <div>
                    <span>Pay Cash On Delivery</span>
                    <b>Complete Checkout Form</b>
                </div>
                <img class="arrow" src="{{ asset('img/up-chevronw.svg') }}">
            </button>
            <button class="credit-btn">
                <img src="{{ asset('img/credit-card.svg') }}">
                <div>
                    <span>Pay Via Credit Card</span>
                    <b>Checkout On Americommerce</b>
                </div>
                <img class="arrow" src="{{ asset('img/up-chevronw.svg') }}">
            </button>
        </div>
    </div>
@endsection
