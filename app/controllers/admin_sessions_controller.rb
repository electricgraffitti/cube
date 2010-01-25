class AdminSessionsController < ApplicationController
  
  layout "admins"
  
  def new
    @admin_session = AdminSession.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @admin_session }
    end
  end
  
  def create
    @admin_session = AdminSession.new(params[:admin_session])

    respond_to do |format|
      if @admin_session.save
        flash[:notice] = 'Admin Login Successfull.'
        format.html { redirect_to admins_path }
      else
        flash[:notice] = "Invalid login, please try gain"
        render :action => "new"
      end
    end
  end
  
  def destroy
    @admin_session = AdminSession.find(current_admin)
    @admin_session.destroy
    flash[:notice] = 'Logout Successfull'
    redirect_to root_path
  end
end
