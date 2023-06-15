class CitiesController < JSONAPI::ResourceController
  skip_before_action :verify_authenticity_token

  def index
    @cities = list_cities_from_a_country
  end

  def show
    @city = get_a_cities_from_a_country(params[:id]) if params[:id].present?
  end

  private

  def list_cities_from_a_country(default_country = "BR")
    country = ISO3166::Country.new(default_country)

    country.subdivisions.to_json
  end

  def get_a_cities_from_a_country(query)
    country = ISO3166::Country.new("BR")

    country.subdivisions.dig(query).to_json
  end
end
