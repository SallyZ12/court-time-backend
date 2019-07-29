class Api::V1::ReservationsController < ApplicationController

  # before_action :set_user
  # before_action :set_court

  def index
    if params[:user_id]
        @user = set_user
        @reservations = @user.reservations
      else
     @reservations = Reservation.all
   end
     # @reservations = @court.reservations
    render json: @reservations
  end


  def show
    @reservation = set_reservation
  end

  def create
    @reservation = Reservation.create(reservation_params)

    render json: @reservation
  end


  private

  def set_reservation
    @reservation = Reservation.find(params[:id])
  end

  # def set_court
  #   @court = Court.find(params[:court_id])
  # end

  def set_user
    @user = User.find(params[:user_id])
  end



  def reservation_params
    params.require(:reservation).permit(:user_id, :court_id, :rate_type, :rate, :hour, :day, :confirmID)
  end



end
