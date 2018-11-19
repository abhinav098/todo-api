Rails.application.routes.draw do
  resources :comments
  resources :todos do
    resources :comments
  end
end
