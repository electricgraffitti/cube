class HomeController < ApplicationController
  
  def index
    @employees = Employee.last_created
    @code_blog = CodeBlog.last
    @services = Service.small_list(3).indexed_order
  end

end