require 'test_helper'

class HeadersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:headers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create header" do
    assert_difference('Header.count') do
      post :create, :header => { }
    end

    assert_redirected_to header_path(assigns(:header))
  end

  test "should show header" do
    get :show, :id => headers(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => headers(:one).to_param
    assert_response :success
  end

  test "should update header" do
    put :update, :id => headers(:one).to_param, :header => { }
    assert_redirected_to header_path(assigns(:header))
  end

  test "should destroy header" do
    assert_difference('Header.count', -1) do
      delete :destroy, :id => headers(:one).to_param
    end

    assert_redirected_to headers_path
  end
end
