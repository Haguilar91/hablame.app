# == Route Map
#
#                                Prefix Verb   URI Pattern                                                                              Controller#Action
#                    new_doctor_session GET    /doctors/sign_in(.:format)                                                               doctors/sessions#new
#                        doctor_session POST   /doctors/sign_in(.:format)                                                               doctors/sessions#create
#                destroy_doctor_session DELETE /doctors/sign_out(.:format)                                                              doctors/sessions#destroy
#                   new_doctor_password GET    /doctors/password/new(.:format)                                                          devise/passwords#new
#                  edit_doctor_password GET    /doctors/password/edit(.:format)                                                         devise/passwords#edit
#                       doctor_password PATCH  /doctors/password(.:format)                                                              devise/passwords#update
#                                       PUT    /doctors/password(.:format)                                                              devise/passwords#update
#                                       POST   /doctors/password(.:format)                                                              devise/passwords#create
#            cancel_doctor_registration GET    /doctors/cancel(.:format)                                                                devise/registrations#cancel
#               new_doctor_registration GET    /doctors/sign_up(.:format)                                                               devise/registrations#new
#              edit_doctor_registration GET    /doctors/edit(.:format)                                                                  devise/registrations#edit
#                   doctor_registration PATCH  /doctors(.:format)                                                                       devise/registrations#update
#                                       PUT    /doctors(.:format)                                                                       devise/registrations#update
#                                       DELETE /doctors(.:format)                                                                       devise/registrations#destroy
#                                       POST   /doctors(.:format)                                                                       devise/registrations#create
#                      new_user_session GET    /users/sign_in(.:format)                                                                 users/sessions#new
#                          user_session POST   /users/sign_in(.:format)                                                                 users/sessions#create
#                  destroy_user_session DELETE /users/sign_out(.:format)                                                                users/sessions#destroy
#                     new_user_password GET    /users/password/new(.:format)                                                            devise/passwords#new
#                    edit_user_password GET    /users/password/edit(.:format)                                                           devise/passwords#edit
#                         user_password PATCH  /users/password(.:format)                                                                devise/passwords#update
#                                       PUT    /users/password(.:format)                                                                devise/passwords#update
#                                       POST   /users/password(.:format)                                                                devise/passwords#create
#              cancel_user_registration GET    /users/cancel(.:format)                                                                  devise/registrations#cancel
#                 new_user_registration GET    /users/sign_up(.:format)                                                                 devise/registrations#new
#                edit_user_registration GET    /users/edit(.:format)                                                                    devise/registrations#edit
#                     user_registration PATCH  /users(.:format)                                                                         devise/registrations#update
#                                       PUT    /users(.:format)                                                                         devise/registrations#update
#                                       DELETE /users(.:format)                                                                         devise/registrations#destroy
#                                       POST   /users(.:format)                                                                         devise/registrations#create
#            back_user_masquerade_index GET    /users/masquerade/back(.:format)                                                         devise/masquerades#back
#                       user_masquerade GET    /users/masquerade/:id(.:format)                                                          devise/masquerades#show
#                                 rooms GET    /rooms(.:format)                                                                         rooms#index
#                                       POST   /rooms(.:format)                                                                         rooms#create
#                              new_room GET    /rooms/new(.:format)                                                                     rooms#new
#                             edit_room GET    /rooms/:id/edit(.:format)                                                                rooms#edit
#                                  room GET    /rooms/:id(.:format)                                                                     rooms#show
#                                       PATCH  /rooms/:id(.:format)                                                                     rooms#update
#                                       PUT    /rooms/:id(.:format)                                                                     rooms#update
#                                       DELETE /rooms/:id(.:format)                                                                     rooms#destroy
#                         psychologists GET    /psychologists(.:format)                                                                 psychologists#index
#                                       POST   /psychologists(.:format)                                                                 psychologists#create
#                      new_psychologist GET    /psychologists/new(.:format)                                                             psychologists#new
#                     edit_psychologist GET    /psychologists/:id/edit(.:format)                                                        psychologists#edit
#                          psychologist GET    /psychologists/:id(.:format)                                                             psychologists#show
#                                       PATCH  /psychologists/:id(.:format)                                                             psychologists#update
#                                       PUT    /psychologists/:id(.:format)                                                             psychologists#update
#                                       DELETE /psychologists/:id(.:format)                                                             psychologists#destroy
#                   admin_psychologists GET    /admin/psychologists(.:format)                                                           admin/psychologists#index
#                                       POST   /admin/psychologists(.:format)                                                           admin/psychologists#create
#                new_admin_psychologist GET    /admin/psychologists/new(.:format)                                                       admin/psychologists#new
#               edit_admin_psychologist GET    /admin/psychologists/:id/edit(.:format)                                                  admin/psychologists#edit
#                    admin_psychologist GET    /admin/psychologists/:id(.:format)                                                       admin/psychologists#show
#                                       PATCH  /admin/psychologists/:id(.:format)                                                       admin/psychologists#update
#                                       PUT    /admin/psychologists/:id(.:format)                                                       admin/psychologists#update
#                                       DELETE /admin/psychologists/:id(.:format)                                                       admin/psychologists#destroy
#                           admin_users GET    /admin/users(.:format)                                                                   admin/users#index
#                                       POST   /admin/users(.:format)                                                                   admin/users#create
#                        new_admin_user GET    /admin/users/new(.:format)                                                               admin/users#new
#                       edit_admin_user GET    /admin/users/:id/edit(.:format)                                                          admin/users#edit
#                            admin_user GET    /admin/users/:id(.:format)                                                               admin/users#show
#                                       PATCH  /admin/users/:id(.:format)                                                               admin/users#update
#                                       PUT    /admin/users/:id(.:format)                                                               admin/users#update
#                                       DELETE /admin/users/:id(.:format)                                                               admin/users#destroy
#                   admin_announcements GET    /admin/announcements(.:format)                                                           admin/announcements#index
#                                       POST   /admin/announcements(.:format)                                                           admin/announcements#create
#                new_admin_announcement GET    /admin/announcements/new(.:format)                                                       admin/announcements#new
#               edit_admin_announcement GET    /admin/announcements/:id/edit(.:format)                                                  admin/announcements#edit
#                    admin_announcement GET    /admin/announcements/:id(.:format)                                                       admin/announcements#show
#                                       PATCH  /admin/announcements/:id(.:format)                                                       admin/announcements#update
#                                       PUT    /admin/announcements/:id(.:format)                                                       admin/announcements#update
#                                       DELETE /admin/announcements/:id(.:format)                                                       admin/announcements#destroy
#                        admin_services GET    /admin/services(.:format)                                                                admin/services#index
#                                       POST   /admin/services(.:format)                                                                admin/services#create
#                     new_admin_service GET    /admin/services/new(.:format)                                                            admin/services#new
#                    edit_admin_service GET    /admin/services/:id/edit(.:format)                                                       admin/services#edit
#                         admin_service GET    /admin/services/:id(.:format)                                                            admin/services#show
#                                       PATCH  /admin/services/:id(.:format)                                                            admin/services#update
#                                       PUT    /admin/services/:id(.:format)                                                            admin/services#update
#                                       DELETE /admin/services/:id(.:format)                                                            admin/services#destroy
#                   admin_notifications GET    /admin/notifications(.:format)                                                           admin/notifications#index
#                                       POST   /admin/notifications(.:format)                                                           admin/notifications#create
#                new_admin_notification GET    /admin/notifications/new(.:format)                                                       admin/notifications#new
#               edit_admin_notification GET    /admin/notifications/:id/edit(.:format)                                                  admin/notifications#edit
#                    admin_notification GET    /admin/notifications/:id(.:format)                                                       admin/notifications#show
#                                       PATCH  /admin/notifications/:id(.:format)                                                       admin/notifications#update
#                                       PUT    /admin/notifications/:id(.:format)                                                       admin/notifications#update
#                                       DELETE /admin/notifications/:id(.:format)                                                       admin/notifications#destroy
#                            admin_root GET    /admin(.:format)                                                                         admin/users#index
#                               privacy GET    /privacy(.:format)                                                                       home#privacy
#                                 terms GET    /terms(.:format)                                                                         home#terms
#                           sidekiq_web        /sidekiq                                                                                 Sidekiq::Web
#                                 walls GET    /walls(.:format)                                                                         walls#index
#                                       POST   /walls(.:format)                                                                         walls#create
#                              new_wall GET    /walls/new(.:format)                                                                     walls#new
#                             edit_wall GET    /walls/:id/edit(.:format)                                                                walls#edit
#                                  wall GET    /walls/:id(.:format)                                                                     walls#show
#                                       PATCH  /walls/:id(.:format)                                                                     walls#update
#                                       PUT    /walls/:id(.:format)                                                                     walls#update
#                                       DELETE /walls/:id(.:format)                                                                     walls#destroy
#                         notifications GET    /notifications(.:format)                                                                 notifications#index
#                         announcements GET    /announcements(.:format)                                                                 announcements#index
#                                 chats GET    /chats(.:format)                                                                         chats#index
#                                       POST   /chats(.:format)                                                                         chats#create
#                              new_chat GET    /chats/new(.:format)                                                                     chats#new
#                                  root GET    /                                                                                        welcome#index
#         rails_mandrill_inbound_emails POST   /rails/action_mailbox/mandrill/inbound_emails(.:format)                                  action_mailbox/ingresses/mandrill/inbound_emails#create
#         rails_postmark_inbound_emails POST   /rails/action_mailbox/postmark/inbound_emails(.:format)                                  action_mailbox/ingresses/postmark/inbound_emails#create
#            rails_relay_inbound_emails POST   /rails/action_mailbox/relay/inbound_emails(.:format)                                     action_mailbox/ingresses/relay/inbound_emails#create
#         rails_sendgrid_inbound_emails POST   /rails/action_mailbox/sendgrid/inbound_emails(.:format)                                  action_mailbox/ingresses/sendgrid/inbound_emails#create
#          rails_mailgun_inbound_emails POST   /rails/action_mailbox/mailgun/inbound_emails/mime(.:format)                              action_mailbox/ingresses/mailgun/inbound_emails#create
#        rails_conductor_inbound_emails GET    /rails/conductor/action_mailbox/inbound_emails(.:format)                                 rails/conductor/action_mailbox/inbound_emails#index
#                                       POST   /rails/conductor/action_mailbox/inbound_emails(.:format)                                 rails/conductor/action_mailbox/inbound_emails#create
#     new_rails_conductor_inbound_email GET    /rails/conductor/action_mailbox/inbound_emails/new(.:format)                             rails/conductor/action_mailbox/inbound_emails#new
#    edit_rails_conductor_inbound_email GET    /rails/conductor/action_mailbox/inbound_emails/:id/edit(.:format)                        rails/conductor/action_mailbox/inbound_emails#edit
#         rails_conductor_inbound_email GET    /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                             rails/conductor/action_mailbox/inbound_emails#show
#                                       PATCH  /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                             rails/conductor/action_mailbox/inbound_emails#update
#                                       PUT    /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                             rails/conductor/action_mailbox/inbound_emails#update
#                                       DELETE /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                             rails/conductor/action_mailbox/inbound_emails#destroy
# rails_conductor_inbound_email_reroute POST   /rails/conductor/action_mailbox/:inbound_email_id/reroute(.:format)                      rails/conductor/action_mailbox/reroutes#create
#                    rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
#             rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#                    rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
#             update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#                  rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create

require 'sidekiq/web'

Rails.application.routes.draw do

   root :to  => 'welcome#index'
  devise_for :doctors, path: 'doctors', controllers:{
    sessions: 'doctors/sessions'
    #omniauth_callbacks: "users/omniauth_callbacks"
  }
  devise_for :users, path: 'users' ,controllers: {
    sessions: 'users/sessions'
    #omniauth_callbacks: "users/omniauth_callbacks"
  }





  resources :rooms

  namespace :admin do
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

  resources :walls
  resources :notifications, only: [:index]
  resources :announcements, only: [:index]
  resources :chats, only: [:new, :create, :index]
  resources :conversations do
    resources :messages
  end
  #devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
