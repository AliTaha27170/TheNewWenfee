@extends('layouts.app')

@section('content')

<h1 id="My_Order_Title">My Orders</h1> 
<table class="My-Order-Table">
  <thead>
    <th>Order Number</th>
    <th>Total Price</th>
    <th>Date</th>
    <th>Payment Method</th>
    <th>Shipping</th>
    <th>Status</th>

  </thead>
  <tbody>
    <tr>
      <td data-label="Order.No">1</td>
      <td data-label="Total-Price">120 $</td>
      <td data-label="Date">22/2/2017</td>
      <td data-label="Payment-Method">Credit Card</td>
      <td data-label="Shipping">Yes</td>
      <td data-label="Staus">Done</td>

    </tr>

    <tr>
     <td data-label="Order.No">2</td>
      <td data-label="Total-Price">120 $</td>
      <td data-label="Date">22/2/2017</td>
      <td data-label="Payment-Method">Credit Card</td>
      <td data-label="Shipping">Yes</td>
      <td data-label="Staus">Done</td>

    </tr>

    <tr>
      <td data-label="Order.No">3</td>
      <td data-label="Total-Price">120 $</td>
      <td data-label="Date">22/2/2017</td>
      <td data-label="Payment-Method">Credit Card</td>
      <td data-label="Shipping">Yes</td>
      <td data-label="Staus">Done</td>

    </tr>

    <tr>
      <td data-label="Order.No">4</td>
      <td data-label="Total-Price">120 $</td>
      <td data-label="Date">22/2/2017</td>
      <td data-label="Payment-Method">Credit Card</td>
      <td data-label="Shipping">Yes</td>
      <td data-label="Staus">Done</td>

    </tr>
  </tbody>
</table>




@endsection