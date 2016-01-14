require 'test_helper'

class PlanetaControllerTest < ActionController::TestCase
  setup do
    @planetum = planeta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:planeta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create planetum" do
    assert_difference('Planetum.count') do
      post :create, planetum: { name: @planetum.name }
    end

    assert_redirected_to planetum_path(assigns(:planetum))
  end

  test "should show planetum" do
    get :show, id: @planetum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @planetum
    assert_response :success
  end

  test "should update planetum" do
    patch :update, id: @planetum, planetum: { name: @planetum.name }
    assert_redirected_to planetum_path(assigns(:planetum))
  end

  test "should destroy planetum" do
    assert_difference('Planetum.count', -1) do
      delete :destroy, id: @planetum
    end

    assert_redirected_to planeta_path
  end
end
