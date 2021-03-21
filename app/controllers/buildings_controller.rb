class BuildingsController < ApplicationController

    def show
        @building= Building.find(params[:id])
        @income= @building.current_income
        @available_floors = @building.number_of_floors_available
    end

    def index
        @buildings = Building.all
    end



end