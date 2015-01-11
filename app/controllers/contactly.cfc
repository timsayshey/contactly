component accessors=true {

    property contactly;

    /**
    * Initialize the contactly controller
    **/
    public struct function init( fw ) {
        variables.fw = fw;
        
        // Default values for form fields
        variables.formdefaults = {
            'fullname'              : "",
            'email'                 : "",
            'message'               : "",
            'mexicanfoodpreference' : "",
            'favoriteboardgames'    : "",
            'weapon'                : "",
            'joinlist'              : ""
        }; 
        return this;
    }

    /**
    * Contact form page
    **/
    public boolean function default( struct rc ) {
		// Set Form Defaults
		structAppend( rc, variables.formdefaults, false );
    	return true;
    }

    /**
    * Handle the post from the form page
    **/
    public boolean function submit( struct rc ) {
		// Set Form Defaults
		structAppend( rc, variables.formdefaults, false );
        
		// Insert values in to session facade
		variables.contactly.contactlyPostHandler( rc=rc, formFieldsList=StructKeyList(variables.formdefaults) );       
		
        // Redirect to the confirmation page
		variables.fw.redirect('contactly.confirmation');

    	return true;
    }

    /**
    * Display the results on the confirmation page
    **/
    public boolean function confirmation( struct rc ) {		
    	// Form values already available in session facade
        return true;
    }
}