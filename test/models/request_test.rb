require 'test_helper'

class RequestTest < ActiveSupport::TestCase
  test "create valid request" do
    request = Request.new(from: "User 1", details: "Song 1")
    assert request.valid?
  end

  test "reject invalid request" do
    request = Request.new(from: "User 1")
    assert_not request.valid?
  end
end