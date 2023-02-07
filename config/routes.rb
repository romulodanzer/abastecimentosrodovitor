Rails.application.routes.draw do

  root to: 'abastecimentos#index'
  resources :abastecimentos, only: [:index, :create, :show]

end