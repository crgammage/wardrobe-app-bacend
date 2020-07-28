class OutfitsController < ApplicationController

    def index
        outfits = Outfit.all
        render json: outfits, except: [:updated_at, :created_at]
    end
    
    def show
        outfit = Outfit.find(params[:id])
        options = {
        include: :clothes
        }
        render json: OutfitSerializer.new(outfit, options)
    end

end
