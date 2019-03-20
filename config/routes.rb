Rails.application.routes.draw do
  resources :bookings
  resources :functions
  resources :people
  resources :movies
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
