<cfoutput>
	
	<h1>Le Contact Form</h1>
	<form class="form-horizontal well" method="post" action="#buildURL('main.submit')#">
		<div class="form-group">
			<label class="col-sm-2 control-label">Name</label>
			<div class="col-sm-10">
				<input name="fullname" value="#rc.fullname#" type="text" class="form-control" placeholder="Ex: Chuck Norris">
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">Email</label>
			<div class="col-sm-10">
				<input name="email" value="#rc.email#" type="text" class="form-control" placeholder="Ex: gmail@chucknorris.com">
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">Message</label>
			<div class="col-sm-10">
				<textarea name="message" class="form-control" rows="3">#rc.message#</textarea>
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">Taco or Burrito</label>
			<div class="col-sm-10">
				<select name="mexicanfoodpreference" class="form-control">
					<option #!len(trim(rc.mexicanfoodpreference)) ? "selected" : ""# value="">Pick One</option>
					<option #rc.mexicanfoodpreference eq "Taco" ? "selected" : ""#>Taco</option>
					<option #rc.mexicanfoodpreference eq "Burrito" ? "selected" : ""#>Burrito</option>
				</select>
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">Favorite Board Games</label>
			<div class="col-sm-10">
				<select name="favoriteboardgames" multiple class="form-control">
					<option #listFind(rc.favoriteboardgames,"Settlers of Catan") ? "selected" : ""#>Settlers of Catan</option>
					<option #listFind(rc.favoriteboardgames,"Ticket to Ride") ? "selected" : ""#>Ticket to Ride</option>
					<option #listFind(rc.favoriteboardgames,"Dominion") ? "selected" : ""#>Dominion</option>
					<option #listFind(rc.favoriteboardgames,"Bang!") ? "selected" : ""#>Bang!</option>
				</select>
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">Pick a weapon</label>
			<div class="col-sm-10">
				<label class="radio-inline">
					<input name="weapon" type="radio" #rc.weapon eq "Blaster" ? "checked" : ""# value="Blaster"> Blaster
				</label>
				<label class="radio-inline">
					<input name="weapon" type="radio" #rc.weapon eq "Lightsaber" ? "checked" : ""# value="Lightsaber"> Lightsaber
				</label>
				<label class="radio-inline">
					<input name="weapon" type="radio" #rc.weapon eq "Force Lightening" ? "checked" : ""# value="Force Lightening"> Force Lightening
				</label>
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
				<div class="checkbox">
					<label>
						<input name="joinlist" value="1" type="checkbox"  #isBoolean(rc.joinlist) AND rc.joinlist ? "checked" : ""#> Add me to some mailing list
					</label>
				</div>
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
				<button type="submit" class="btn btn-primary btn-lg btn-block">Send</button>
			</div>
		</div>
	</form>
</cfoutput>