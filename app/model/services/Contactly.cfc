component extends="app.model.services.Manager" {

    /**
    * Initialize the contactly manager
    **/
    public struct function init() {
        application.contactlySession = new org.utilities.scopeFacade( "session" );
        return this;
    }

    /**
    * Handle the form post from the post controller method
    * @formFieldsList List of form fields that need to be handled
    **/
    public struct function postHandler( required struct rc, required string formFieldsList ) {
        var formfields = listToArray(formFieldsList);        

        // Check that email field is valid, if not set an error message
        if( structKeyExists(rc,"email") && ( !isEmail( email=rc.email ) || !len(rc.email) ) ) {
           rc.errorMessage = "There was an issue with the email address you entered, please try again.";
        }

        // Iterate over field values and insert in to session facade
		for( fieldname in formfields ){
            application.contactlySession.set( key=fieldname, value=rc[fieldname] );
		}
        return rc;
    }

    /**
    * Returns struct of default values for the contact form fields
    **/
    public struct function fieldDefaults() {
        return {
            'fullname'              : "",
            'email'                 : "",
            'message'               : "",
            'mexicanfoodpreference' : "",
            'favoriteboardgames'    : "",
            'weapon'                : "",
            'joinlist'              : ""
        };
    }

    /**
    * Check to see if email string is valid, simple udf
    * @email email string to check
    **/
    private boolean function isEmail(required string email) {
        return (            
            len(listGetAt(arguments.email, 1, "@")) lte 64 and 
            len(listGetAt(arguments.email, 2, "@")) lte 255
        ) eq 1;
    }
} 