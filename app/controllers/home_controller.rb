class HomeController < ApplicationController
  
  def index
    @blogs = Blog.small_list(1).last_created
    @employees = Employee.last_created
    @code_blogs = CodeBlog.small_list(2).last_created
    @services = Service.small_list(3).last_created
  end

end