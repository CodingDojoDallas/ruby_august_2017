require 'test_helper'

class RpgControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get process_money" do
    get :process_money
    assert_response :success
  end

  test "should get reset" do
    get :reset
    assert_response :success
  end

end
