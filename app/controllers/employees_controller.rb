class EmployeesController < ApplicationController
  
  before_filter :require_admin, :except => [:index, :show]
  layout "admins"
  
  # GET /employees
  # GET /employees.xml
  def index
    # @employees = Employee.all
    # 
    # respond_to do |format|
    #   format.html # index.html.erb
    #   format.xml  { render :xml => @employees }
    # end
    format.html { redirect_to(root_path) }
  end

  # GET /employees/1
  # GET /employees/1.xml
  def show
    # @employee = Employee.find(params[:id])
    # 
    # respond_to do |format|
    #   format.html # show.html.erb
    #   format.xml  { render :xml => @employee }
    # end
    format.html { redirect_to(root_path) }
  end

  # GET /employees/new
  # GET /employees/new.xml
  def new
    @employee = Employee.new
    @employee.assets.build
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @employee }
    end
  end

  # GET /employees/1/edit
  def edit
    @employee = Employee.find(params[:id])
    if @employee.assets.blank?
      @employee.assets.build
    end
  end

  # POST /employees
  # POST /employees.xml
  def create
    @employee = Employee.new(params[:employee])

    respond_to do |format|
      if @employee.save
        flash[:notice] = 'Employee was successfully created.'
        format.html { redirect_to(admin_employee_path) }
        format.xml  { render :xml => @employee, :status => :created, :location => @employee }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @employee.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /employees/1
  # PUT /employees/1.xml
  def update
    @employee = Employee.find(params[:id])

    respond_to do |format|
      if @employee.update_attributes(params[:employee])
        flash[:notice] = 'Employee was successfully updated.'
        format.html { redirect_to(admin_employee_path) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @employee.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /employees/1
  # DELETE /employees/1.xml
  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy

    respond_to do |format|
      format.html { redirect_to(admin_employee_path) }
      format.xml  { head :ok }
    end
  end
end
