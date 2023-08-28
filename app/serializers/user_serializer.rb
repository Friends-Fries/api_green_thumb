class UserSerializer
  include JSONAPI::Serializer

  attributes :id, :email, :name

  belongs_to :city
end
