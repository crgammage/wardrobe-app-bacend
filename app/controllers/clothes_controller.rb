class ClothesController < ApplicationController
    
    def index
        clothes = Clothe.all
        render json: clothes, except: [:updated_at, :created_at]
    end
    
    def show
        clothe = Clothe.find(params[:id])
        render json: clothe, except: [:updated_at, :created_at]
    end

    def new
        clothe = Clothe.new
        render json: clothe, except: [:updated_at, :created_at]
    end

    def create
        byebug
        clothe = Clothe.create(clothe_params)
        render json: clothe, except: [:updated_at, :created_at]
    end

    def destroy
        byebug
        clothe = Clothe.find(params[:id])
        clothe.destroy
    end

    private

    def clothe_params
        params.require(:clothe).permit(:image, :name, :category, :size)
    end
end
