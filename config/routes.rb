Rails.application.routes.draw do
  resources :notes
  resources :fb_users
  resources :tickets
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


      root to:'pages#home'
end
