class Api::V1::ReservationsController < ApplicationController

  def index
    @reservations = Reservation.all
    render json: @reservations
  end


  def show
    @reservation = Reservation.find(params[:id])
    render json: @reservation
  end


  private

  def set_reservations
    @reservation = Reservation.find(params[:id])
  end

  def reservation_params
    params.require(:reservation).permit(:user_id, :court_id, :rate_type, :rate, :hour, :day, :confirmID)
  end



end
