Rails.application.routes.draw do
  resources :comments
  resources :events
  devise_for :users
  resources :categories
  root to: "index#index", as: "index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
