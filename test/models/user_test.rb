require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "should not be valid without" do
    user_without_email = User.new

    assert_not user_without_email.valid?

    assert user_without_email.errors.full_messages, "Email can't be blank"
  end
end
