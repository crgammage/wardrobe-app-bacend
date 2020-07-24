class OutfitSerializer
  include FastJsonapi::ObjectSerializer
  attributes :user, :clothes, :created_at
  belongs_to :user
  belongs_to :clothes
end
