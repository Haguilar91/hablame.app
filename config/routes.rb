require 'sidekiq/web'

Rails.application.routes.draw do
  devise_for :doctors, path: 'doctors', controllers:{
    sessions: 'doctors/sessions'
    #omniauth_callbacks: "users/omniauth_callbacks"
  }
  devise_for :users, path: 'users' ,controllers: {
    sessions: 'users/sessions'
    #omniauth_callbacks: "users/omniauth_callbacks"
  }

  resources :rooms
  resources :psychologists
  namespace :admin do
    resources :psychologists
    resources :users
    resources :announcements
    resources :services
    resources :notifications
    root to: "users#index"
  end
  get '/privacy', to: 'home#privacy'
  get '/terms', to: 'home#terms'
    authenticate :user, lambda { |u| u.admin? } do
      mount Sidekiq::Web => '/sidekiq'
    end


  resources :notifications, only: [:index]
  resources :announcements, only: [:index]
  resources :chats, only: [:new, :create, :index]
  #devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }
  root to: 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
