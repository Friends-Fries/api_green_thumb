class CitySerializer
  include JSONAPI::Serializer

  attributes :id, :name, :uf

  belongs_to :country
  has_many :users
end
