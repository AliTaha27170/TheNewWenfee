@extends('layouts.app')

@section('content')

    <link rel="stylesheet" href="/css/profile.css">

    <div class="profile-page">

        <div class="row">
            <div class="col-md-3">
                <div class="name">
                    <h2>My Name</h2>
                    <p>mail@mail.com</p>
                </div>
                <div class="profile-list">
                    <ul>
                        <li class="one" onclick="fun(this, 'one')" id="defaultOpen">Personal information</li>
                        <li class="two" onclick="fun(this, 'two')">my order</li>
                        <li class="three" onclick="fun(this, 'three')">my favorite</li>
                        <li class="four" onclick="fun(this, 'four')">change my password</li>
                    </ul>
                </div>
            </div>
            <div class="col-md-9">
                <div id="one" class="tab-ele personal-list">
                    <h2 class="title">personal information</h2>
                    <hr>
                    <form action="{{ route('update-profile') }}" method="POST">
                        <div class="row">
                            @csrf
                            <div class="col-md-6">
                                <p>Full Name</p>
                                <input type="text" name="name" value="{{ old('name', auth()->user()->name) }}">
                                <p>Email address</p>
                                <input type="text" name="email" value="{{ old('email', auth()->user()->email) }}" readonly>
                                <p>Address</p>
                                <input type="text" name="address" value="{{ old('email', auth()->user()->address) }}">

                            </div>
                            <div class="col-md-5">
                                <p>Display Name</p>
                                <input type="text" name="display_name"
                                    value="{{ old('display_name', auth()->user()->display_name) }}">
                                <p>Phone Number</p>
                                <input type="text" name="phone" value="{{ old('phone', auth()->user()->phone) }}">
                                <button type="submit">Save Changes</button>
                            </div>
                        </div>
                    </form>
                </div>
                <div id="two" class="tab-ele personal-list">
                    <div class="shopping-cart">
                        <h2 class="title">My Orders</h2>
                        <hr>
                        <div class="small-container cart-page">
                            @if($user_orders->count() >0)
                            @foreach ($user_orders as $order)
                            <table>
                                <tr>
                                    <th>Order Date: {{$order->created_at->diffForHumans()}} </th>
                                    <th style="width:100px;">QUANTITY</th>
                                    <th style="width:100px;">PRICE</th>
                                </tr>
                                @foreach ($order->products as $product)
                                <tr>
                                    <td>
                                        <div class="cart-info">
                                            <img src="{{ Voyager::image($product->image) }}" />
                                            <p>{{$product->name}}</p>
                                        </div>
                                    </td>
                                    <td>
                                        <p>X{{ $product->pivot->quantity }}</p>
                                    </td>
                                    <td>{{$product->price}}</td>
                                    @if($product->discount)
                                    <td>$ {{$product->price - ($product->price * ($product->discount / 100))}}</td>
                                    @else
                                    <td>$ {{$product->price}}</td>
                                    @endif
                                </tr>
                                @endforeach
                            </table>
                            <p style="text-align: right; margin: 20px;">Shipping Cost: 11.99 USD</p>    
                            <p style="text-align: right; margin: 20px;">Total Cost: {{$order->billing_total}} USD</p>    
                            @endforeach


                            @else
                            <p>You did not make any order</p>
                            @endif
                        </div>
                    </div>
                </div>

                <div id="four" class="tab-ele personal-list">
                    <h2 class="title">Change Password</h2>
                    <hr>
                    <div class="row">
                        <div class="col-md-6">
                            <p>New Password</p>
                            <input type="text">
                            <p>Current Password</p>
                            <input type="text">

                        </div>
                        <div class="col-md-5">
                            <p>Confirm Your Password</p>
                            <input type="text">
                            <button>Change Password</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        function fun(event, sec) {
            $(".profile-list .active").removeClass("active");
            $(event).addClass("active");
            $(".tab-ele").hide();
            $("#" + sec).show();
            // $(".tab-ele").fadeOut(200, function() {
            //     $("#" + sec).fadeIn(300);
            // })
        }

        $(document).ready(function() {
            $(".profile-list .one").click();
        })

    </script>

@endsection
