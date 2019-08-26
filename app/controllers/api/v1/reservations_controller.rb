class Api::V1::ReservationsController < ApplicationController


  def index

    if params[:user_id]
      @user = current_user
      @reservations = @user.reservations
      else
        @reservations = Reservation.all

    if params[:court_id]
      @court = set_court
      @reservations = @court.reservations
    else
      @reservations = Reservation.all

    if params[:club_id]
      @club = set_club
      @reservations = @club.reservations
      else
        @reservations = Reservation.all
        end
      end
    end
      render json: @reservations
  end


   def show
        @reservation = set_reservation
        render json: @reservation
  end

  def create
    @reservation = Reservation.create(reservation_params)

    render json: @reservation
  end


  private

  def set_reservation
    @reservation = Reservation.find(params[:id])
  end

  def set_court
    @court = Court.find(params[:court_id])
  end

  def set_club
    @club = Club.find(params[:club_id])
  end

  def set_user
    @user = User.find(params[:user_id])
  end


  def reservation_params
    params.require(:reservation).permit(:court_id, :rate_type, :rate, :hour, :day, :confirmID)
  end


end
