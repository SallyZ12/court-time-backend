class Api::V1::ClubsController < ApplicationController

    def index
      @clubs = Club.all
      render json: @clubs
    end


    def create
      @club = Club.account.new(club_params)
        if @club.save
          render json: @account
        else
          render json: {error: 'Error creating club'}
        end
    end

    def show
      @club = Club.find(params[:id])
      render json: @club 
    end

    def destroy
    end


    private

    def set_club
      @club = Club.find(params[:id])
    end

    def club_params
      params:require(:club).permit(:club_name, :location, :number_courts)
    end




end
