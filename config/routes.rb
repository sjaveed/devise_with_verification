DeviseWithVerification::Application.routes.draw do
  devise_for :users

  resources :users, only: [:index]
end
