class CampersController < ApplicationController

    def index
      @ranks_and_campers = Camper.get_rank_hash
    end

    def new
      @camper = Camper.new
    end

    def create
      camper = Camper.create(camper_params)
      camper.scrape_fcc
      redirect_to root_path
    end

    def scrape_camper(camper)
      camper.fcc_url_valid?
    end

    private

    def camper_params
      params.require(:camper).permit(:fcc_username)
    end

    def find_camper
      @camper = Camper.find_by(id: params[:id])
    end


end
