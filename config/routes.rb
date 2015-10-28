Rails.application.routes.draw do
 root 'eats#index'

 resources :eats do
   resources :images
 end

end
