class BlogsController < ApplicationController
  
  uses_tiny_mce :only => [:new, :create, :edit, :update]
  
  before_filter :require_admin, :except => [:index,:show]

  # GET /blogs
  # GET /blogs.xml
  def index
    @blogs = Blog.paginate :page => params[:page], :order => 'created_at DESC'
    @headers = Header.blogs_header
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @blogs }
    end
  end

  # GET /blogs/1
  # GET /blogs/1.xml
  def show
    # @blog = Blog.find(params[:id], :include => :assets) 
    # respond_to do |format|
    #   format.html 
    #   format.xml  { render :xml => @blog }
    # end
    redirect_to blogs_path 
  end

  # GET /blogs/new
  # GET /blogs/new.xml
  def new
    @blog = Blog.new
    @blog.assets.build
    respond_to do |format|
      format.html {render :layout => "admins"}
      format.xml  { render :xml => @blog }
    end
  end

  # GET /blogs/1/edit
  def edit
    @blog = Blog.find(params[:id])
    if @blog.assets.blank?
      @blog.assets.build
    end
    render :layout => "admins"
  end

  # POST /blogs
  # POST /blogs.xml
  def create
    @blog = Blog.new(params[:blog])

    respond_to do |format|
      if @blog.save
        flash[:notice] = 'Blog was successfully created.'
        format.html { redirect_to(admin_blog_path) }
        format.xml  { render :xml => @blog, :status => :created, :location => @blog }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @blog.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /blogs/1
  # PUT /blogs/1.xml
  def update
    @blog = Blog.find(params[:id])

    respond_to do |format|
      if @blog.update_attributes(params[:blog])
        flash[:notice] = 'Blog was successfully updated.'
        format.html { redirect_to(admin_blog_path) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @blog.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /blogs/1
  # DELETE /blogs/1.xml
  def destroy
    @blog = Blog.find(params[:id])
    @blog.destroy

    respond_to do |format|
      format.html { redirect_to(admin_blog_path) }
      format.xml  { head :ok }
    end
  end
end
