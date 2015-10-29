Rails.application.routes.draw do
  devise_for :users
 root 'eats#index'

 resources :eats do
   resources :images
 end


end
