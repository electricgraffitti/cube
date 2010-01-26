class HomeController < ApplicationController
  
  def index
    @blogs = Blog.small_list(1).last_created
    @employees = Employee.all
    @code_blogs = CodeBlog.small_list(2).last_created
   
  end

end