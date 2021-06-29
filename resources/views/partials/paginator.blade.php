@if ($paginator->hasPages())
<div class="pagination-div justify-content-center text-center">
    <ul class="pagination">
        {{-- Previous Page Link --}}
        @if ($paginator->onFirstPage())
        @else
    <li><a class="disable" href="{{ $paginator->previousPageUrl() }}"><i class="ion-ios-arrow-back"></i>Previous</a></li>
        @endif

        {{-- Pagination Elements --}}
        @foreach ($elements as $element)
        {{-- "Three Dots" Separator --}}
        @if (is_string($element))
        <li><a href="javascript:void(0);">{{ $element }}</a></li>
        {{--<li>.</li>--}}
        @endif

        {{-- Array Of Links --}}
        @if (is_array($element))
        @foreach ($element as $page => $url)
        @if ($page == $paginator->currentPage())
        <li><a class="page-number current" href="javascript:void(0);">{{ $page }}</a></li>
        @else
        <li><a class="page-number" href="{{ $url }}">{{ $page }}</a></li>
        @endif
        @endforeach
        @endif
        @endforeach

        {{-- Next Page Link --}}
        @if ($paginator->hasMorePages())
        <li><a href="{{ $paginator->nextPageUrl() }}">Next<i class="ion-ios-arrow-forward"></i></a></li>
        @endif
    </ul>
</div>
@endif