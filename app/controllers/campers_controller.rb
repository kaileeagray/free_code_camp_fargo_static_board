class CampersController < ApplicationController

    def index
      @campers = Camper.order(points: :desc)
    end

    def show
      find_camper
    end

    def new
      @camper = Camper.new
    end

    def create
      @camper = Camper.create(camper_params)
      redirect_to camper_path(@camper)
    end

    def edit
      find_camper
    end

    def update
      find_camper
      @camper.update(camper_params)
      redirect_to attraction_path(@attraction)
    end

    private

    def camper_params
      params.require(:camper).permit(:username, :points, :user_id)
    end

    def find_camper
      @camper = Camper.find_by(id: params[:id])
    end

end
