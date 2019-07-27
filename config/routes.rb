Rails.application.routes.draw do

  namespace :api do
     namespace :v1 do
       resources :reservations
       resources :users

            resources :users do
              resources :reservations

            resources :courts do
              resources :reservations

            resources :clubs do
              resources :courts

          end
         end
        end
       end
     end


end
