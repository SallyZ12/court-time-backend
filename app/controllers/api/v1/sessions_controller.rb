class Api::V1::SessionsController < ApplicationController

  def create

    @user = User.find_by(username: params[:session][:username])

    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id

      render json: @user, status: :ok
    else
      render json: {
        error: "Invalid Username and/or Password"
      }
    end
  end

  def get_current_user
    if logged_in?
      render json: current_player
    else
      render json: {
        error: "Please Log In to Reserve A Court"
      }
    end
  end

  def destroy
    session.clear
    render json: {
      notice: "successfully logged out"
    }, status: :ok
  end



end
