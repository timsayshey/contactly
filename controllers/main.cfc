component {
    function default( struct rc ) {
        var defaults = {
        	'fullname'              : "",
        	'email'                 : "",
        	'message'               : "",
        	'mexicanfoodpreference' : "",
        	'favoriteboardgames'    : "",
        	'weapon'                : "",
        	'joinlist'              : ""
        };
        structAppend( rc, defaults, false ); // set false to not overwrite existing keys 
        //writeDump(rc); abort;
    }
}