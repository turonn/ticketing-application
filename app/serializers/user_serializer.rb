class UserSerializer
  include JSONAPI::Serializer
  attributes :first_name, :last_name, :email, :cellphone, :password
end
