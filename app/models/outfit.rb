class Outfit < ApplicationRecord
    has_many :clothes
    belongs_to :user
end
