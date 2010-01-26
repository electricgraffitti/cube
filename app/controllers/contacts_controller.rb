class ContactsController < ApplicationController
  
  layout "admins"
  
  def contact_us
  end
  
  def contact_mailer
    #grab the params to pass to the redirect
    @form = params
    
    # raise @form.to_yaml
    contact_us_submission = ApplicationMailer.create_contact_mailer(@form)
    contact_us_submission.set_content_type("text/html")
    ApplicationMailer.deliver(contact_us_submission)
    flash[:notice] = "Your Message has been sent."
    render :partial =>  'contacts/contact_us_thank_you',
                        :layout => "admins",
                        :locals => {:form => @form}
  end
  
  
end
