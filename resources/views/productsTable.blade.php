<!DOCTYPE html>
<html lang="en">
<head>
  <title> Wenfee Products </title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>Wenfee</h2>
  <p>All wenfee products</p>
  <table class="table table-hover">
    <thead>
      <tr>
        <th>Item</th>
        <th>Description</th>
        <th>Brand</th>
        <th>Price</th>
        <th>wgiht</th>
        <th>categoryname</th>
        <th>image</th>

      </tr>
    </thead>
    <tbody>
      @php
          $i=1;
      @endphp
      @foreach ($products as $item)

      <tr>
        @php

            $image="https://wenfee.com/jasmine/thenewwenfee/storage/app/public/";
            $img=$item->image;
        @endphp
        <td>{{ $i++ }}</td>
        <td>{!! $item->body !!}</td>
       <td>{{   $item->name }} </td>
       <td>$ {{   round($item->price + ( ($item->price*25)/100) ,2) }}  </td>
       <td>{{   $item->size }}  LBS</td>

       <td>{{   $item->category_name }} </td>
       <td>
         <img src="{{ $image.$img }}" alt="" width="180px">
       </td>

      </tr>
      @endforeach

    </tbody>
  </table>
</div>

<center>
  {{ $products->links( "pagination::bootstrap-4") }}

</center>

</body>
</html>
