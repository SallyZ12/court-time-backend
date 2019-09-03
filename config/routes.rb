Rails.application.routes.draw do

  post "api/v1/signup", to: "api/v1/users#create"
  post "/api/v1/login", to: "api/v1/sessions#create"
  get "/api/v1/get_current_user", to: "api/v1/sessions#get_current_user"
  delete "/api/v1/logout", to: "api/v1/sessions#destroy"

  namespace :api do
     namespace :v1 do
       # resources :reservations
       resources :users
       resources :clubs
     end
   end

   # namespace :api do
   #  namespace :v1 do
   #    resources :reservations
   #  end
   # end

       namespace :api do
          namespace :v1 do
              resources :users do
                resources :reservations
        end
      end
    end

    namespace :api do
       namespace :v1 do
         resources :clubs do
           resources :courts
         end
       end
     end

     namespace :api do
        namespace :v1 do
          resources :clubs do
            resources :reservations
          end
        end
      end



end
