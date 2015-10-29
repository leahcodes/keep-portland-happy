Rails.application.routes.draw do
  devise_for :users, :path => 'accounts'

 root 'eats#index'

 resources :eats do
   resources :images
 end

resources :users do
 resources :favorites
 end
end
