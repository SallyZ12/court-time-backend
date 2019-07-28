class Api::V1::CourtsController < ApplicationController

    before_action :set_club

    def index
      @courts = Court.all
      @courts = @club.courts
      render json: @courts
    end

    def show
      @court = set_court
      render json: @court
    end

    def create
      @court = @club.courts.new(court_params)
      @court = Court.new(court_params)
      @court.save
      render json: @court
    end

    def destroy
    end

    private

    def set_club
      @club = Club.find(params[:club_id])
    end

    def set_court
      @court = Court.find(params[:id])
    end

    def court_params
      params.require(:court).permit(:club_id, :court_number, :surface, :prime, :non_prime)
    end





end
