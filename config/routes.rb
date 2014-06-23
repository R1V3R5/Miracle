Rails.application.routes.draw do
  resources :shares
  namespace :api do
    resources :shares
  end

  devise_for :users,
    :controllers => {
      :omniauth_callbacks => "users/omniauth_callbacks"
    }

  resources :appointments
  resources :babies
  resources :foods
  resources :journals
  resources :milestones
  resources :photos
  resources :weights
  resources :wishes
  resources :groups 
  resources :forums do
    resources :comments
  end
  
  
  root 'home#index'
 
end
