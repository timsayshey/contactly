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
    * @rc request context from the controller
    **/
    public boolean function contactlyPostHandler( required struct rc, required string formFieldsList ) {
        var formfields = listToArray(formFieldsList);
		for( fieldname in formfields ){
		    application.contactlySession.set(key=fieldname,value=rc[fieldname]);
		}
        return true;
    }
} 