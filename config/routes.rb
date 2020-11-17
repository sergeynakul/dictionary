Rails.application.routes.draw do
  root 'translations#index'
  resources :translations, only: [:index, :create]
end
