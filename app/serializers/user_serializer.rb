class UserSerializer
  include JSONAPI::Serializer

  attributes :id, :email, :name, :city

  belongs_to :city
end
