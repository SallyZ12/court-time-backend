Rails.application.routes.draw do

  namespace :api do
     namespace :v1 do
       # resources :reservations
       resources :users
       resources :clubs
     end
   end

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
