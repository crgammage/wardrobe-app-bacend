class OutfitSerializer < ActiveModel::Serializer
  attributes :id, :name, :weekday, :category, :user_id, :clothes
end
