// JS validations go here

$(document).ready(function() {
		// Admin login validation
		$('#admin_form').validate({
			rules: {
				"admin_session[username]": "required",
				"admin_session[password]": "required"
			},
			messages: {
				"admin_session[username]": "Valid Username is Required",
				"admin_session[password]": "Valid Password is Required"
			}
		});
  
  // Validates a Subscription
    $('#contact_form').validate({ // The #name is the ID of the form element/tag
      rules: {
        "contact_first_name": "required", // The first half is the value of the NAME attribute of the input tag.
        "contact_last_name": "required",
        "contact_email": {required: true, email: true}
      },
      messages: {
        "contact_first_name": "First name required", // again, the NAME attribute, and then the value of the message if it fails validation
        "contact_last_name": "Last name required",
        "contact_email": {
          required: "Email required", 
          email: "not a valid email address"}
      }
    });
    
    
    // The Project Form can go here
    
    $('#project_form').validate({
      rules: {
        "project_first_name": "required",
        "project_last_name": "required",
        "project_email": {required: true, email: true}

      },
      messages: {
        "project_first_name": "First name required",
        "project_last_name": "Last name required",
        "project_email": {
          required: "Email required",
          email: "not a valid email address"}

      }
    });
});
