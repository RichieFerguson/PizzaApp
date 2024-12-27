Rails.application.routes.draw do
  root "home#index"
  devise_for :users
  resources :pizzas
  resources :toppings
  resources :toppings

end

