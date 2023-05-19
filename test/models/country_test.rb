require "test_helper"

class CountryTest < ActiveSupport::TestCase
  def setup
    @country = countries(:japan)
    @country_2 = countries(:brasil)
  end

  test "should not be valid without" do
    country_without_name = Country.new

    assert_not country_without_name.valid?

    assert country_without_name.errors.full_messages, "Name can't be blank"
  end
end
