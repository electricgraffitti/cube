class HomeController < ApplicationController
  
  def index
    @employees = Employee.last_created
    @blog = Blog.last
    @services = Service.small_list(3).indexed_order
    @clients = Client.front_page.client_order
  end
  
  def apps
    @clients = Client.app_list
  end
  
  def ecommerce
    @clients = Client.ecommerce_list
  end
  
  def marketing
    @clients = Client.marketing_list.reverse
  end
  
  def design
    @clients = Client.design_list
  end
  
  def about
    @employees = Employee.all
  end
  def domains
    
  end
  
  def hosting
    
  end
  
  def css
    
  end
  
  def flash_animation
    
  end
  
  def hypertext
    
  end
  
  def javascript
    
  end
  
  def php
    
  end
  
  def rails
    
  end
  
  def ruby
    
  end
  
  def sequel
    
  end
  
  def rails
    
  end
  
  def wordpress
    
  end
  
  #  def project_mailer
  #      #grab the params to pass to the redirect
  #      #raise params.to_yaml
  #      @project_form = params
  # 
  #      # raise @project_form.to_yaml
  #      project_contact_submission = ApplicationMailer.create_project_mailer(@project_form)
  #      project_contact_submission.set_content_type("text/html")
  #      ApplicationMailer.deliver(project_contact_submission)
  #      flash[:notice] = "Your Project Form has been sent."
  #      render :partial => 'contacts/project_thank_you',
  #                          :layout => "admins",
  #                          :locals => {:project_form => @project_form}
  # end

end