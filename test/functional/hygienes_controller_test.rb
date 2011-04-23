require 'test_helper'

class HygienesControllerTest < ActionController::TestCase
  setup do
    @hygiene = hygienes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hygienes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hygiene" do
    assert_difference('Hygiene.count') do
      post :create, :hygiene => @hygiene.attributes
    end

    assert_redirected_to hygiene_path(assigns(:hygiene))
  end

  test "should show hygiene" do
    get :show, :id => @hygiene.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @hygiene.to_param
    assert_response :success
  end

  test "should update hygiene" do
    put :update, :id => @hygiene.to_param, :hygiene => @hygiene.attributes
    assert_redirected_to hygiene_path(assigns(:hygiene))
  end

  test "should destroy hygiene" do
    assert_difference('Hygiene.count', -1) do
      delete :destroy, :id => @hygiene.to_param
    end

    assert_redirected_to hygienes_path
  end
end
