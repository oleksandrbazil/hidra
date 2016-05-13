Rails.application.routes.draw do
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
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
