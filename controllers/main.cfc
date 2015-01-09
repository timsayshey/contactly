component accessors=true {
    /**
    * Description of method name and purpose
    **/

    variables.formdefaults = {
    	'fullname'              : "",
    	'email'                 : "",
    	'message'               : "",
    	'mexicanfoodpreference' : "",
    	'favoriteboardgames'    : "",
    	'weapon'                : "",
    	'joinlist'              : ""
    };    

    function init( fw ) {
        variables.fw = fw;
        return this;
    }

    public boolean function default( struct rc ) {
		// Form Defaults
		structAppend( rc, variables.formdefaults, false );
    	return true;
    }

    public boolean function submit( struct rc ) {
		// Form Defaults
		structAppend( rc, variables.formdefaults, false );

		// Insert values in to session facade
		var formfields = listToArray(StructKeyList(variables.formdefaults));
		for( fieldname in formfields ){
		    application.session.set(key=fieldname,value=rc[fieldname]);
		}
		
		variables.fw.redirect('main.confirmation');

    	return true;
    }

    public boolean function confirmation( struct rc ) {		
    	return true;
    }
}