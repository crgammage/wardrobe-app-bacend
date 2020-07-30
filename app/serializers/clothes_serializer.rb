class ClothesSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :size, :category, :image, :id
end
