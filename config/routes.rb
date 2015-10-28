Rails.application.routes.draw do
 root 'eats#index'

 resources :eats
end
