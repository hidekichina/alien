require 'test_helper'

class PodersControllerTest < ActionController::TestCase
  setup do
    @poder = poders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:poders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create poder" do
    assert_difference('Poder.count') do
      post :create, poder: { name: @poder.name }
    end

    assert_redirected_to poder_path(assigns(:poder))
  end

  test "should show poder" do
    get :show, id: @poder
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @poder
    assert_response :success
  end

  test "should update poder" do
    patch :update, id: @poder, poder: { name: @poder.name }
    assert_redirected_to poder_path(assigns(:poder))
  end

  test "should destroy poder" do
    assert_difference('Poder.count', -1) do
      delete :destroy, id: @poder
    end

    assert_redirected_to poders_path
  end
end
