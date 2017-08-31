var filterquery = new String();

function indexFilter() {
    // Build up the filter query, taking one class per checked filter
    filterquery = "";
    var filters = document.querySelectorAll('.filter:checked:not([value=all])');
    for ( var i = 0, l = filters.length; i < l; i++ ) {
        filterquery += "." + filters[i].value;
    }

    // Hide all listings (or, if the filter query is empty, unhide all listings)
    var listings = document.querySelectorAll('.listing');
    for ( var i = 0, l = listings.length; i < l; i++ ) {
        if ( filterquery ) {
            listings[i].className += (' hidden');
        } else {
            listings[i].className = listings[i].className.replace( /(?:^|\s)hidden(?!\S)/g , '' );
        }
    }

    // Unhide listings that match the filter query (unless empty)
    if ( filterquery ) {
        var listings = document.querySelectorAll('.listing' + filterquery);
        for ( var i = 0, l = listings.length; i < l; i++ ) {
          listings[i].className = listings[i].className.replace( /(?:^|\s)hidden(?!\S)/g , '' );
        }
    }
}
