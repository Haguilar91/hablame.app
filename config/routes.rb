require 'sidekiq/web'

Rails.application.routes.draw do
  resources :notes

  root to: 'welcome#index'

  #resources :doctors
  #resources :users

  devise_for :doctors,
             path: 'doctors', controllers: { sessions: 'doctors/sessions' }
  #omniauth_callbacks: "users/omniauth_callbacks"

  devise_for :users, path: 'users', controllers: { sessions: 'users/sessions' }
  #omniauth_callbacks: "users/omniauth_callbacks"

  resources :rooms
 
  resources :checkouts,  only: [:new, :create, :show]

  namespace :admin do
    resources :doctors
    resources :users
    resources :announcements
    resources :services
    resources :notifications
    root to: 'users#index'
  end
  get '/privacy', to: 'home#privacy'
  get '/terms', to: 'home#terms'


  authenticate :user, ->(u) { u.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  end

  resources :walls
  resources :notifications, only: %i[index]
  resources :announcements, only: %i[index]
  resources :conversations do
    resources :messages
  end
  #devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
