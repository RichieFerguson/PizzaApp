Rails.application.routes.draw do
  root "home#index"
  resources :pizzas
  resources :toppings
  resources :toppings

end

