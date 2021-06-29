@extends('layouts.app')

@section('content')
    <link rel="stylesheet" href="/css/checkout_form.css">
    @include('partials.inc.messages')
    <form action="{{ route('store.order') }}" method="POST">
        @csrf
        <div class="checkout">
            @include('partials.inc.messages')
            <h1>Checkout</h1>
            <p>Please complete your information</p>
            <br>
            <label>Choose the address closest to you :</label>
            <select name="closest_address" id="adress" required>
                <option value="">--Choose-- </option>
                <option value="Najib EST, INC (7184 Troy Hill Dr, Suite C Elkridge, MD 21075)"> Najib EST, INC (7184 Troy
                    Hill Dr, Suite C Elkridge, MD 21075) </option>
                <option value="Thomas Market (2650 University Blvd W, Wheaton, MD 20902)"> Thomas Market (2650 University
                    Blvd W, Wheaton, MD 20902) </option>
                <option value="Mediterranean Goods (6464 General Green Way, Alexandria, VA 22312)"> Mediterranean Goods
                    (6464 General Green Way, Alexandria, VA 22312)</option>
            </select>
            <br>
            <br>
            <label>Email:</label>
            <input type="email" value="{{ auth()->user()->email }}" readonly placeholder="Your Email" readonly>
            <br>
            <br>
            <label>Full name:</label>
            <input type="text" value="{{ auth()->user()->name }}" readonly placeholder="Your full name">
            <br>
            <br>
            <label>State:</label>
            <input type="text" required name="state" placeholder="Your state">
            <br>
            <br>
            <label>City:</label>
            <input type="text" name="city" required placeholder="Your City">
            <br>
            <br>
            <label>Address:</label>
            <input type="text" value="{{ auth()->user()->address }}" readonly placeholder="Your Address">
            <br>
            <br>
            <label>Zip Code:</label>
            <input type="text" name="zipcode" required placeholder="Your zip code">
            <br>
            <br>
            <label>Phone number:</label>
            <input type="text" value="{{ auth()->user()->phone }}" readonly placeholder="Your Phone number">
            <br>
            <br>
            <label>Your Order</label>
            <div class="order">
                <div class="row">
                    <div class="col-md-3">
                        <p>Subtotal: </p>
                        <p>Shipping:</p>
                        <p>Total Cost:</p>
                    </div>
                    <div class="col-md-3">
                        <p>{{ Cart::subtotal() }} USD</p>
                        <p>11.99 USD</p>
                        <p>{{ Cart::total() + 11.99 }} USD</p>
                    </div>
                </div>
            </div>
            <button>Submit</button>

        </div>
    </form>
@endsection
