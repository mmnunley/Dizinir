require 'test_helper'

class PortfolioControllerTest < ActionController::TestCase
  test "should get _portfolio" do
    get :_portfolio
    assert_response :success
  end

end
