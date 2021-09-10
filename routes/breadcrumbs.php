<?php // routes/breadcrumbs.php

// Note: Laravel will automatically resolve `Breadcrumbs::` without
// this import. This is nice for IDE syntax and refactoring.
use Diglactic\Breadcrumbs\Breadcrumbs;
use App\Models\ProductCategory;
// This import is also not required, and you could replace `BreadcrumbTrail $trail`
//  with `$trail`. This is nice for IDE type checking and completion.
use Diglactic\Breadcrumbs\Generator as BreadcrumbTrail;

// Home
Breadcrumbs::for('home', function (BreadcrumbTrail $trail) {
    $trail->push('Home', route('home'));
});

// Home > Category
Breadcrumbs::for('cats', function (BreadcrumbTrail $trail) {
    $trail->parent('home');
    $trail->push('cats', route('cats'));
});
// Home > Category >subCategory
Breadcrumbs::for('subCats', function (BreadcrumbTrail $trail , $subCats) {
   //dd($trail);
    $trail->parent('cats');
    $trail->push($subCats,route('subCats',$subCats->id));
});
// // Home > Category > products
// Breadcrumbs::for('products', function (BreadcrumbTrail $trail) {
//     $trail->parent('Category');
//     $trail->push('products', route('show-product'));
// });

// Home > Category > products
// Breadcrumbs::for('products', function (BreadcrumbTrail $trail, $categories) {
//     $trail->parent('Category');
//     $trail->push($categories->title, route('category', $categories));
// });
