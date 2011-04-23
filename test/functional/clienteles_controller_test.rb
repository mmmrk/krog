require 'test_helper'

class ClientelesControllerTest < ActionController::TestCase
  setup do
    @clientele = clienteles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clienteles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clientele" do
    assert_difference('Clientele.count') do
      post :create, :clientele => @clientele.attributes
    end

    assert_redirected_to clientele_path(assigns(:clientele))
  end

  test "should show clientele" do
    get :show, :id => @clientele.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @clientele.to_param
    assert_response :success
  end

  test "should update clientele" do
    put :update, :id => @clientele.to_param, :clientele => @clientele.attributes
    assert_redirected_to clientele_path(assigns(:clientele))
  end

  test "should destroy clientele" do
    assert_difference('Clientele.count', -1) do
      delete :destroy, :id => @clientele.to_param
    end

    assert_redirected_to clienteles_path
  end
end
