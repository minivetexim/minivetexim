Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => "homes#index"
  resources :homes
  resources :profiles
  resources :products

end