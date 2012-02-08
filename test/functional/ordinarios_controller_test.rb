require 'test_helper'

class OrdinariosControllerTest < ActionController::TestCase
  setup do
    @ordinario = ordinarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ordinarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ordinario" do
    assert_difference('Ordinario.count') do
      post :create, ordinario: @ordinario.attributes
    end

    assert_redirected_to ordinario_path(assigns(:ordinario))
  end

  test "should show ordinario" do
    get :show, id: @ordinario.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ordinario.to_param
    assert_response :success
  end

  test "should update ordinario" do
    put :update, id: @ordinario.to_param, ordinario: @ordinario.attributes
    assert_redirected_to ordinario_path(assigns(:ordinario))
  end

  test "should destroy ordinario" do
    assert_difference('Ordinario.count', -1) do
      delete :destroy, id: @ordinario.to_param
    end

    assert_redirected_to ordinarios_path
  end
end
