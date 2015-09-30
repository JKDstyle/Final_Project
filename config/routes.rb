Rails.application.routes.draw do
  get'/' => 'gims#home', as: 'root' 
  resources :gims
  resources :martial_arts
  resources :zones
end
