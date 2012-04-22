require 'test_helper'

class ServicesControllerTest < ActionController::TestCase
  test "should get _services" do
    get :_services
    assert_response :success
  end

end
