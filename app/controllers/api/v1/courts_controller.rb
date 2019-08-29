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
      @user = current_player
        if  @court.save
          render json: @club
        else
          resp = {
          error: @court.errors.full_messages.to_sentence
        }
        render json: resp
      end
    end

    def destroy
      @court = set_court
      @club = Club.find(@court.club_id)

          if @court.reservations.present?
              render json: {
                error: "Can not delete a court with reservations"
          }
          else
            @court.destroy
            render json: @club
            end
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
