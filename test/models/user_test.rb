require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "should not be valid without" do
    user_without_email = User.new

    assert_not user_without_email.valid?

    assert user_without_email.errors.full_messages, "Email can't be blank"
  end

  test "new user should be volunteer" do
    new_user = User.new

    assert new_user.role, "volunteer"
  end

  test "new user should not be an admin" do
    new_user = User.new

    assert_not new_user.admin?, true
  end
end
