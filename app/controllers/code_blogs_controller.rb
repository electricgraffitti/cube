class CodeBlogsController < ApplicationController
  
  before_filter :require_admin, :except => [:index, :show]
  
  
  # GET /code_blogs
  # GET /code_blogs.xml
  def index
    # @code_blogs = CodeBlog.all
    # 
    #    respond_to do |format|
    #      format.html # index.html.erb
    #      format.xml  { render :xml => @code_blogs }
    #    end
    redirect_to blogs_path
  end

  # GET /code_blogs/1
  # GET /code_blogs/1.xml
  def show
    # @code_blog = CodeBlog.find(params[:id])
    # 
    # respond_to do |format|
    #   format.html { render :layout => "short"}
    #   format.xml  { render :xml => @code_blog }
    # end
    redirect_to blogs_path
  end

  # GET /code_blogs/new
  # GET /code_blogs/new.xml
  def new
    @code_blog = CodeBlog.new
    @code_blog.assets.build
    respond_to do |format|
      format.html {render :layout => "admins"}
      format.xml  { render :xml => @code_blog }
    end
  end

  # GET /code_blogs/1/edit
  def edit
    @code_blog = CodeBlog.find(params[:id])
    if @code_blog.assets.blank?
       @code_blog.assets.build
     end
    render :layout => "admins"
  end

  # POST /code_blogs
  # POST /code_blogs.xml
  def create
    @code_blog = CodeBlog.new(params[:code_blog])

    respond_to do |format|
      if @code_blog.save
        flash[:notice] = 'CodeBlog was successfully created.'
        format.html { redirect_to(@code_blog) }
        format.xml  { render :xml => @code_blog, :status => :created, :location => @code_blog }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @code_blog.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /code_blogs/1
  # PUT /code_blogs/1.xml
  def update
    @code_blog = CodeBlog.find(params[:id])

    respond_to do |format|
      if @code_blog.update_attributes(params[:code_blog])
        flash[:notice] = 'CodeBlog was successfully updated.'
        format.html { redirect_to(@code_blog) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @code_blog.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /code_blogs/1
  # DELETE /code_blogs/1.xml
  def destroy
    @code_blog = CodeBlog.find(params[:id])
    @code_blog.destroy

    respond_to do |format|
      format.html { redirect_to(code_blogs_url) }
      format.xml  { head :ok }
    end
  end
end
