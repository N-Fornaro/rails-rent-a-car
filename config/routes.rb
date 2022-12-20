Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :cars, only: %i[show index] do
    resources :bookings, only: %i[index show new create]
  end
  resources :bookings, only: %i[destroy edit update]
  # Defines the root path route ("/")
  # root "articles#index"
end
