class HomeController < ApplicationController
  
  def index
    @employees = Employee.last_created
    @blog = Blog.last
    @services = Service.small_list(3).indexed_order
  end

end