Rails.application.routes.draw do
  devise_for :users
  root to: 'users#index'
  resources :users ,  only: [:index]
  resources :articles , only: [:new , :create]
  
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

end
