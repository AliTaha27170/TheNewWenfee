@extends('layouts.app')

@section('content')
@if ($brands)
    @foreach ($brands as $brand )
        
    @endforeach
@endif
@endsection