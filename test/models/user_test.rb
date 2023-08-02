require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "should not create a new user without data" do
    user = User.new
    assert_not user.save, "Saved a user without data"
  end
end
