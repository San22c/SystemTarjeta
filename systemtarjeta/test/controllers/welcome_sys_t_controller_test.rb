require 'test_helper'

class WelcomeSysTControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
