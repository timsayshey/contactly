component extends="org.corfield.framework" {
	
	// Setup Sessions
    this.sessionmanagement = true;
	this.sessiontimeout = CreateTimeSpan(0,0,45,0);
	
	function setupRequest() {
		// use setupRequest to do initialization per request
		request.context.startTime = getTickCount();
	}

    function setupApplication() {
        // bean factory should look in the model tree for services and beans
        var bf = new framework.IOC( "model" );
        setBeanFactory( bf );
        this.session = new org.utilities.scopeFacade( "session" );
    }
	
}
