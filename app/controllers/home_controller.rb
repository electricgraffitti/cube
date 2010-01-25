class HomeController < ApplicationController
  
  def index
    @blogs = Blog.small_list(1).last_created
   
  end

end