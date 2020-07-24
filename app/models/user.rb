class User < ApplicationRecord
    has_many :outfits
    has_many :clothes, through: :outfits
end
