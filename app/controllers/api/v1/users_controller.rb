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


def update
  @user =  set_user
  @user.update(user_params)

    if @user.admin === "No" && params[:user][:admin] === "Yes"

        if @user.save
            render json: @user
            else
           resp = {
            error: @user.errors.full_messages.to_sentence
            }
            render json: resp
       end

     else render json: {
       error: "Admin exists -- only one permitted"
     }

   end
end



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

  def is_admin
    User.all.each do |user|
      if user.admin === "Yes"
        return false
      end
    end
    return true
  end

end



# def update
#     @user =  set_user
#     @user.update(user_params)
#         if  params[:user][:admin] === 'No' || is_admin === true
#               if @user.save
#                 render json: @user
#               else
#                 resp = {
#                   error: @user.errors.full_messages.to_sentence
#                 }
#                   render json: resp
#               end
#         else
#           render json: {
#           error: "Admin exists -- only one permitted"
#           }
#       end
#     end
