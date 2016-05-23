Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  resources :works
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  post 'users/signup_email' => 'users#signup_email'


  resources :comments
  resources :projects do
    resources :comments, module: :projects
  end
  resources :developers do
    resources :comments, module: :developers
  end
  resources :clients do
    resources :comments, module: :clients
  end

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
