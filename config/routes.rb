Rails.application.routes.draw do

  namespace :api do
     namespace :v1 do
       resources :reservations
       resources :users
       resources :clubs

            resources :users do
              resources :reservations

            resources :courts do
              resources :reservations

          end
         end
        end
       end
end
