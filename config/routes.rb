Rails.application.routes.draw do
  authenticated :user do
    resources :skills
    root to: 'skills#index', as: :authenticated_root
  end

  get "/skills", to: 'pages#home'
  root to: 'pages#home'
  devise_for :users
end
