component extends="org.corfield.framework" {
	
	// Setup Sessions
    this.sessionmanagement = true;
	this.sessiontimeout = CreateTimeSpan(0,0,45,0);
	
	// Setup Application Settings
	this.mappings["/"] = getDirectoryFromPath(getCurrentTemplatePath());
	this.name = 'fw1-contactly';
	variables.framework = {
		base = "/app",		
		home = 'contactly.default',
		error = 'contactly.error',
		reloadApplicationOnEveryRequest="true"
	};	

	// Other Application Setup
    function setupApplication() {
        // bean factory should look in the model tree for services and beans
        var bf = new org.corfield.IOC( "app/model" );
        setBeanFactory( bf );
    }
	
}
