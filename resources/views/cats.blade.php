@extends('layouts.app')
@section('content')
{{ Breadcrumbs::render('cats') }}

    @foreach ($cats as $cat)
    <a href="/cats/{{ $cat->id }}" class="album-box">
        
    <div> {{$cat->name}}</div>
    @endforeach

@endsection
