Rails.application.routes.draw do
  root 'intros#index'
  devise_for :users
  resources :posts do
    resources :comments, only: [:create, :destroy]
  end

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
