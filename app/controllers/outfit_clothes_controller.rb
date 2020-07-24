class OutfitClothesController < ApplicationController
    
    def index
        outfit_clothes = OutfitClothe.all
        render json: outfit_clothes, include: [:clothe, :outfit]
    end

    def show
        outfit_clothe = OutfitClothe.find(params[:id])
        render json: outfit_clothe, include: [:outfit, :clothe]
    end
    
end
