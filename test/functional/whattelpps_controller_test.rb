require 'test_helper'

class WhattelppsControllerTest < ActionController::TestCase
  setup do
    @whattelpp = whattelpps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:whattelpps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create whattelpp" do
    assert_difference('Whattelpp.count') do
      post :create, whattelpp: { description: @whattelpp.description, name: @whattelpp.name }
    end

    assert_redirected_to whattelpp_path(assigns(:whattelpp))
  end

  test "should show whattelpp" do
    get :show, id: @whattelpp
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @whattelpp
    assert_response :success
  end

  test "should update whattelpp" do
    put :update, id: @whattelpp, whattelpp: { description: @whattelpp.description, name: @whattelpp.name }
    assert_redirected_to whattelpp_path(assigns(:whattelpp))
  end

  test "should destroy whattelpp" do
    assert_difference('Whattelpp.count', -1) do
      delete :destroy, id: @whattelpp
    end

    assert_redirected_to whattelpps_path
  end
end
