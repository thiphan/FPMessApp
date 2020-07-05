Rails.application.routes.draw do
  devise_for :users
  resources :notes
  resources :fb_users
  resources :tickets
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


    root  'pages#home'
    get 'setting', to: 'pages#edit'

    
end
