window.ParsleyConfig = {
	errorClass: 'has-error',
	successClass: 'has-success',
	classHandler: function(ParsleyField) {
		return ParsleyField.$element.parents('.form-group');
	},
	errorsContainer: function(ParsleyField) {
		return ParsleyField.$element.parents('.form-group');
	},
	errorsWrapper: '<div class="help-block col-sm-10 col-sm-offset-2">',
	errorTemplate: '<div></div>'
};
$(function() {
	$('#parsley-form').parsley('destroy');
	$('#parsley-form').parsley();
});