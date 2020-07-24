class ClothesController < ApplicationController
    
    def index
        clothes = Clothe.all
        render json: clothes, except: [:updated_at, :created_at]
    end
    
    def show
        clothe = Clothe.find(params[:id])
        render json: clothe, except: [:updated_at, :created_at]
    end

end
