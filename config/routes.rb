Rails.application.routes.draw do
  resources :refuels, only: [:index, :create]
end
