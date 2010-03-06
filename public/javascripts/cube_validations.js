// JS validations go here

$(document).ready(function() {
  
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
