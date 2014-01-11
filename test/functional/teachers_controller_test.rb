require 'test_helper'

class TeachersControllerTest < ActionController::TestCase
  test "should get firstname:string" do
    get :firstname:string
    assert_response :success
  end

  test "should get middlename:string" do
    get :middlename:string
    assert_response :success
  end

  test "should get lastname:string" do
    get :lastname:string
    assert_response :success
  end

  test "should get address:string" do
    get :address:string
    assert_response :success
  end

end
