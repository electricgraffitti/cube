class HomeController < ApplicationController
  
  def index
    @employees = Employee.last_created
    @code_blogs = CodeBlog.small_list(2).last_created
    @services = Service.small_list(3).indexed_order
  end

end