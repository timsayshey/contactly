<cfoutput>

	<h1>Confirmation</h1>

	<table class="table table-striped table-bordered">
	  <tr>
	  	<th class="col-md-3">Full name</th> 
		<td>#application.session.get(key="fullname")#</td>
	  </tr>
	  <tr>
		<th>Email</th> 
		<td>#application.session.get(key="email")#</td>
	  </tr>
	  <tr>
		<th>Message</th> 
		<td>#application.session.get(key="message")#</td>  	
	  </tr>
	  <tr>
	 	<th>Mexican Food Preference</th> 
		<td>#application.session.get(key="mexicanfoodpreference")#</td> 	
	  </tr>
	  <tr>
		<th>Favorite Board Games</th> 
		<td>#application.session.get(key="favoriteboardgames")#</td>  	
	  </tr>
	  <tr>
		<th>Weapon</th> 
		<td>#application.session.get(key="weapon")#</td>
	  </tr>
	  <tr>
		<th>Join List</th> 
		<td>#application.session.get(key="joinlist")#</td>	  	
	  </tr>
	</table>

</cfoutput>