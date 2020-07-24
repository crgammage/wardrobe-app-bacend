class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :size, :bio
end
