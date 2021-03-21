class BuildingsController < ApplicationController

    def show
        @building= Building.find(params[:id])
        @income= @building.current_income
    end

    def index
        @buildings = Building.all
    end



end