Rails.application.routes.draw do
  resources :historials
  resources :servicios
  resources :animals
  resources :clientes
  devise_for :usuarios
  get 'inicio/index'
  root :to => 'inicio#index'
end
