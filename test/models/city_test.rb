require "test_helper"

class CityTest < ActiveSupport::TestCase
  def setup
    @city = cities(:tokyo)
    @city_2 = cities(:floripa)
  end

  test "should not create without" do
    city_without_name = City.new(uf: @city.uf, country: @city.country)
    city_without_uf = City.new(name: @city.name, country: @city.country)
    city_without_country = City.new(name: @city.name, uf: @city.uf)

    assert_not city_without_name.valid?
    assert_not city_without_uf.valid?
    assert_not city_without_country.valid?

    assert city_without_name.errors.full_messages, "Name can't be blank"
    assert city_without_uf.errors.full_messages, "Uf can't be blank"
    assert city_without_country.errors.full_messages, "Country must exist"
  end
end
