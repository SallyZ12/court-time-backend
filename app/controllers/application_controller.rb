class ApplicationController < ActionController::API
   include ::ActionController::Cookies

   # helper_method :current_user
   # helper_method :logged_in?


   # def current_user
   #   User.find_by(id: session[:user_id])
   # end

   def current_user
     @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end

    def logged_in?
      !!current_user
    end


end
