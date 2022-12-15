class PlantsController < ApplicationController

    def index
        plants = Plants.all
        render json: plants
    end

    def show
        plant = Plants.find(params[:id])
        render json: plant
    end

    def create
        plant = Plant.create(params_handler)
        render json: plant
    end

    private

    def params_handler
        params.permit(:name, :image, :price)
    end
end
