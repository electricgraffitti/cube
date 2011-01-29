class ContactsController < ApplicationController
  
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
  
  def project_contact
  end
  
  def project_mailer
      #grab the params to pass to the redirect
      #raise params.to_yaml
      @project_form = params

      # raise @project_form.to_yaml
      project_contact_submission = ApplicationMailer.create_project_mailer(@project_form)
      project_contact_submission.set_content_type("text/html")
      ApplicationMailer.deliver(project_contact_submission)
      flash[:notice] = "Your Project Form has been sent."
      render :partial => 'contacts/project_thank_you',
                          :layout => "admins",
                          :locals => {:project_form => @project_form}
 end
  
end
