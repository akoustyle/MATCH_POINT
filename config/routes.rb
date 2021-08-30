Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :wishes do
    resources :likes, only: [:create]
  end

  resources :matches, only: [:show, :index, :create] do
    resources :locations, only: [:show, :index]
  end

  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end
end
