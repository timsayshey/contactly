component accessors=true {

    property contactly;

    /**
    * Initialize the contactly controller
    **/
    public struct function init( fw ) {
        variables.fw = fw;        
        return this;
    }

    /**
    * Contact form page
    **/
    public boolean function default( struct rc ) {
		// Set Form Defaults
		structAppend( rc, variables.contactly.fieldDefaults(), false );
    	return true;
    }

    /**
    * Handle the post from the form page
    **/
    public boolean function submit( struct rc ) {
		// Set Form Defaults
		structAppend( rc, variables.contactly.fieldDefaults(), false );
        
		// Insert values in to session facade
		rc = variables.contactly.postHandler( rc=rc, formFieldsList=StructKeyList(variables.contactly.fieldDefaults()) );        

        if(structKeyExists(rc,"errorMessage")) {
            // Has an error message, return user back to form with message and let parseley do the rest
            variables.fw.setView('contactly.default');
        } else {
            // Valid go to confirmation page
            variables.fw.redirect('contactly.confirmation');
        }       

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