class ApplicationController < ActionController::API
   include ::ActionController::Cookies
   include ::ActionController::Helpers

   helper_method :current_player
   helper_method :logged_in?


   def current_player
     User.find_by(id: session[:user_id])
   end

  #  def current_user
  #    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  # end


    def logged_in?
      !!current_player
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
