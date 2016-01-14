require 'test_helper'

class AlienigenasControllerTest < ActionController::TestCase
  setup do
    @alienigena = alienigenas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:alienigenas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create alienigena" do
    assert_difference('Alienigena.count') do
      post :create, alienigena: { age: @alienigena.age, name: @alienigena.name }
    end

    assert_redirected_to alienigena_path(assigns(:alienigena))
  end

  test "should show alienigena" do
    get :show, id: @alienigena
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @alienigena
    assert_response :success
  end

  test "should update alienigena" do
    patch :update, id: @alienigena, alienigena: { age: @alienigena.age, name: @alienigena.name }
    assert_redirected_to alienigena_path(assigns(:alienigena))
  end

  test "should destroy alienigena" do
    assert_difference('Alienigena.count', -1) do
      delete :destroy, id: @alienigena
    end

    assert_redirected_to alienigenas_path
  end
end
