class Api::V1::UsersController < ApplicationController

  # helper_method :is_admin

  def index
    @users = User.all
    render json: @users
  end


  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def create
    # binding.pry
    @user = User.new(user_params)
      if params[:user][:admin] === 'No' || is_admin === true
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
end

  def destroy
  end


  private

  def set_user
    @user = User.find(params[:id])
  end


  def user_params
    params.require(:user).permit(:first_name, :last_name, :username, :email, :password, :admin)
  end



  def is_admin
    User.all.each do |user|
      if user.admin === "Yes"
        return false
      end
    end
    return true
  end



end
