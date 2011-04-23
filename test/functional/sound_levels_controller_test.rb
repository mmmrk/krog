require 'test_helper'

class SoundLevelsControllerTest < ActionController::TestCase
  setup do
    @sound_level = sound_levels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sound_levels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sound_level" do
    assert_difference('SoundLevel.count') do
      post :create, :sound_level => @sound_level.attributes
    end

    assert_redirected_to sound_level_path(assigns(:sound_level))
  end

  test "should show sound_level" do
    get :show, :id => @sound_level.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @sound_level.to_param
    assert_response :success
  end

  test "should update sound_level" do
    put :update, :id => @sound_level.to_param, :sound_level => @sound_level.attributes
    assert_redirected_to sound_level_path(assigns(:sound_level))
  end

  test "should destroy sound_level" do
    assert_difference('SoundLevel.count', -1) do
      delete :destroy, :id => @sound_level.to_param
    end

    assert_redirected_to sound_levels_path
  end
end
