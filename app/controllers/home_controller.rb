class HomeController < ApplicationController
  
  def index
    @employees = Employee.last_created
    @blog = Blog.last
    @services = Service.small_list(3).indexed_order
    @clients = Client.front_page.client_order
    @headers = Header.index_header
  end
  
  def apps
    @clients = Client.app_list
    @headers = Header.apps_header
  end
  
  def ecommerce
    @clients = Client.ecommerce_list
    @headers = Header.ecommerce_header
  end
  
  def marketing
    @clients = Client.marketing_list.reverse
    @headers = Header.marketing_header
  end
  
  def design
    @clients = Client.design_list
    @headers = Header.design_header
  end
  
  def about
    @employees = Employee.all
    @headers = Header.about_header
  end
  def domains
    @headers = Header.domain_header
  end
  
  def hosting
    @headers = Header.hosting_header
  end
  
  def css
    @headers = Header.css_header
  end
  
  def flash_animation
    @headers = Header.flash_header
  end
  
  def hypertext
    @headers = Header.html_header
  end
  
  def javascript
    @headers = Header.javascript_header
  end
  
  def php
    @headers = Header.php_header
  end
  
  def rails
    @headers = Header.rails_header
  end
  
  def ruby
    @headers = Header.ruby_header
  end
  
  def sequel
    @headers = Header.sql_header
  end
  
  def wordpress
    @headers = Header.hosting_header
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