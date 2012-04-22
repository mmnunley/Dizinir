require 'test_helper'

class ContactControllerTest < ActionController::TestCase
  test "should get _contact" do
    get :_contact
    assert_response :success
  end

end
