class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end


  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def create
    @user =User.new(user_params)
      if @user.save
          session[:user_id] = @user.id
        render json: @user, status: :created
      else
        resp = {
        error: @user.errors.full_messages.to_sentence
      }
      render json: resp, status: :unprocessable_entity
      end
  end

  def destroy
  end


  private

  def set_user
    @user = User.find(params[:id])
  end


  def user_params
    params.require(:user).permit(:username, :email, :password, :admin)
  end

end
