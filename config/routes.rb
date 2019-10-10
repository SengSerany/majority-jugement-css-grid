Rails.application.routes.draw do
  root to: 'home#index'

  resources :home, only: [:index]

  post :home, to: "home#update", as: :home
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
