require 'test_helper'

class SortsControllerTest < ActionController::TestCase
  setup do
    @sort = sorts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sorts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sort" do
    assert_difference('Sort.count') do
      post :create, :sort => @sort.attributes
    end

    assert_redirected_to sort_path(assigns(:sort))
  end

  test "should show sort" do
    get :show, :id => @sort.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @sort.to_param
    assert_response :success
  end

  test "should update sort" do
    put :update, :id => @sort.to_param, :sort => @sort.attributes
    assert_redirected_to sort_path(assigns(:sort))
  end

  test "should destroy sort" do
    assert_difference('Sort.count', -1) do
      delete :destroy, :id => @sort.to_param
    end

    assert_redirected_to sorts_path
  end
end
