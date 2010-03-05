// JS validations go here

$(document).ready(function() {
  
  // Validates a Subscription
    $('#contact_form').validate({
      rules: {
        "contact_first_name": "required",
        "contact_last_name": "required",
        "contact_email": {required: true, email: true}
      },
      messages: {
        "contact_first_name": "First name required",
        "contact_last_name": "Last name required",
        "contact_last_name": {
          required: "Email required", 
          email: "not a valid email address"}
      }
    });
});
