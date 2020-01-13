Rails.application.routes.draw do

  resources :affirmations
  resources :categories
  resources :posts, only: [:index, :create, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
