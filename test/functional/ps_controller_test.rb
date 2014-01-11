require 'test_helper'

class PsControllerTest < ActionController::TestCase
  setup do
    @p = ps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create p" do
    assert_difference('P.count') do
      post :create, p: @p.attributes
    end

    assert_redirected_to p_path(assigns(:p))
  end

  test "should show p" do
    get :show, id: @p.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @p.to_param
    assert_response :success
  end

  test "should update p" do
    put :update, id: @p.to_param, p: @p.attributes
    assert_redirected_to p_path(assigns(:p))
  end

  test "should destroy p" do
    assert_difference('P.count', -1) do
      delete :destroy, id: @p.to_param
    end

    assert_redirected_to ps_path
  end
end
