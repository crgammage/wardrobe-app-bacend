class OutfitClothesController < ApplicationController
    
    def index
        outfit_clothes = OutfitClothe.all
        render json: outfit_clothes, include: [:clothe, :outfit]
    end

    def show
        outfit_clothe = OutfitClothe.find(params[:id])
        options = {
        include: [:clothe, :outfit]}
        render json: OutfitClotheSerializer.new(outfit_clothe, options)
    end
    
end
