@extends('layouts.app')
@section('content')
{{ Breadcrumbs::render('subCats') }}

    @foreach ($subCats as $subCat)        
    <div>aaaaaaaaaa</div>
    @endforeach

@endsection
