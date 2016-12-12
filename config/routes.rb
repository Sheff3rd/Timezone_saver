Rails.application.routes.draw do
  root to: 'clocks#index'

  resources :clocks
end
