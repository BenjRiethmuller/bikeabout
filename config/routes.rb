Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  # mount ActionCable.server => '/cable'

  get 'dashboard', to: 'pages#dashboard', as: :dashboard
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :bikes do
    resources :bookings, only: [:create]
    resources :reviews, only: [:new, :create]
  end
  resources :bookings, only: [:destroy, :update]

end
