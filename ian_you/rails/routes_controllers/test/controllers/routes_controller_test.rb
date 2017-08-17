require 'test_helper'

class RoutesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get say" do
    get :say
    assert_response :success
  end

end
