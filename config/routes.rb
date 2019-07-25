Rails.application.routes.draw do

  namespace :api do
     namespace :v1 do
       resources :reservations
       resources :courts
       resources :clubs
       resources :users
     end
  end


end
