/* globals console, jQuery */

( function() {
	if ( -1 === window.location.href.indexOf( '/stoicism' ) ) {
		return;
	}

	$( '.menu__inner a' ).each( function( i, e ) {
		var $e = $( e );

		if ( -1 === $e.attr( 'href' ).indexOf( 'stoicism' ) ) {
			return;
		}

		$e.addClass( 'active' );
	} );
} () );
