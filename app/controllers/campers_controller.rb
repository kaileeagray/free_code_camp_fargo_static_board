class CampersController < ApplicationController

    def index
      @ranks_and_campers = Camper.get_rank_hash
    end

    def show
      find_camper
    end

    def new
      @camper = Camper.new
    end

    def create
      @camper = Camper.find_or_create_by(camper_params)
      redirect_to root_path
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
