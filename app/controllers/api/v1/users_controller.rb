class Api::V1::UsersController < ApplicationController

before_action :set_user, only: [:show, :update, :destroy]

  def index
    @users = User.all
    render json: @users
  end

  def new
    @user = User.new
  end


  def show
    # if logged_in?
      @user = set_user

    render json: @user
  end

  def create

    @user = User.new(user_params)
      if params[:user][:admin] === 'No' || is_admin === true

            if @user.save
              session[:user_id] = @user.id
              render json: @user, status: :created
            else
              resp = {
              error: @user.errors.full_messages.to_sentence
            }
            render json: resp
            end
      else
        render json: {
        error: "Admin exists -- only one permitted"
        }
    end
end

# when update method was added signup did not work- create method failed
# above received unprocessable_entity error
  # def update
  #   if @user.update(user_params)
  #     render: json: @user
  #   else
  #     render json: @user.errors, status: :unprocessable_entity
  #   end
  # end


  def destroy
    @user.destroy
  end


  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :username, :email, :password, :admin)
  end

  # def is_admin -- moved to application_controller
  #   User.all.each do |user|
  #     if user.admin === "Yes"
  #       return false
  #     end
  #   end
  #   return true
  # end

end
