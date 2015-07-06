require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get logged out home" do
    get :home
    assert_response :success
    assert_select "h1", "Alice & Abhi"
  end

  test "should get logged in home" do
    cookies[:has_access] = true
    get :home
    assert_response :success
    assert_select "h3", "Venue"
  end
end
