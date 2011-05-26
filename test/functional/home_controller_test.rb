require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get my_rank" do
    get :my_rank
    assert_response :success
  end

end
