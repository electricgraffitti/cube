require 'test_helper'

class CodeBlogsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:code_blogs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create code_blog" do
    assert_difference('CodeBlog.count') do
      post :create, :code_blog => { }
    end

    assert_redirected_to code_blog_path(assigns(:code_blog))
  end

  test "should show code_blog" do
    get :show, :id => code_blogs(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => code_blogs(:one).to_param
    assert_response :success
  end

  test "should update code_blog" do
    put :update, :id => code_blogs(:one).to_param, :code_blog => { }
    assert_redirected_to code_blog_path(assigns(:code_blog))
  end

  test "should destroy code_blog" do
    assert_difference('CodeBlog.count', -1) do
      delete :destroy, :id => code_blogs(:one).to_param
    end

    assert_redirected_to code_blogs_path
  end
end
