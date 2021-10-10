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
        <th>Save changes</th>
        <th> Delete</th>

      </tr>
    </thead>
    <tbody>
      @php
          $i=1;
      @endphp
      @foreach ($products as $item)

      <tr>
        <form class="g" action="{{ route('uProduct',$item->id) }}"   method="a{{ $item->id }}">
          @csrf
          @php

            $image="https://wenfee.com/jasmine/thenewwenfee/storage/app/public/";
            $img=$item->image;
        @endphp
        <td>
          {{ $i++ }}</td>
        <td>{!! $item->body !!}</td>
       <td>{{   $item->name }} </td>

       <td>
        <div class="input-group mb-3">
          <input type="" class="ajax-form" placeholder="price" name="price" style="width: 75px" value="{{ $item->price }} " >
          <div class="input-group-append">
            <br>
            <span class="input-group-text" id="basic-addon2" >USD</span>
          </div>
        </div>


         </td>
       <td>{{   $item->size }}  LBS</td>

       <td>{{   $item->category_name }} </td>
       <td>
         <img src="{{ $image.$img }}" alt="" width="180px">
       </td>
       <td>

        <input type="submit" class="btn btn-info"  id="a{{ $item->id }}" value="Save"></button>
        <p id="a{{ $item->id }}a{{ $item->id }}"></p>

       </td>

       <td>
        <a href="{{ route('dProduct',$item->id) }}" class="btn btn-danger" onclick="return confirm('are you sure ?')">Delete</button>
       </td>

      </form>
      </tr>
      @endforeach

    </tbody>
  </table>
</div>

<center>
  {{ $products->links( "pagination::bootstrap-4") }}

</center>



<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>



  <script>
   // this is the id of the form
$(".g").submit(function(e) {

  e.preventDefault(); // avoid to execute the actual submit of the form.

  var form = $(this);
  var url = form.attr('action');
  var btn=form.attr('method');
  var btn_ = '#'+btn;
  var text_ = '#'+btn+btn;

  $(btn_).prop('value', 'Waiting ..');


  $.ajax({
         type: "GET",
         url: url,
         data: form.serialize(), // serializes the form's elements.
         success: function(data)
         {
          $(btn_).prop('value', 'Save');
          $(text_).text('Success');
          $(text_).css("color","green");
         }
       });


});
  </script>




</body>
</html>
