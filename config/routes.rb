Rails.application.routes.draw do
  namespace :mypage do
    get 'users/show'
    get 'users/edit'
    get 'users/update'
  end
  root to: 'conferences#index'

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords'
  }

  namespace :mypage do
    root to: 'home#index'
    resources :users, only: %i[show update edit]
  end

  resources :conferences, only: %i[index show]
  resources :days, only: %i[show]
  resources :slots, only: %i[show]
  resources :participations, only: %i[create destroy]
end
