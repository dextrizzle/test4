Rails.application.routes.draw do

  require 'sidekiq/web'
  require 'sidekiq/cron/web'
  mount Sidekiq::Web => '/sidekiq'

  devise_for :users
  resources :pets
  post 'welcome/pet_action', :to => 'welcome#pet_action'
  post 'welcome/feed', :to => 'welcome#feed'
  post 'welcome/drink', :to => 'welcome#drink'
  post 'welcome/medicine', :to => 'welcome#medicine'
  post 'welcome/toilet', :to => 'welcome#toilet'
  post 'welcome/happyness', :to => 'welcome#happyness'
  post 'welcome/sleep', :to => 'welcome#sleep'
  get 'welcome/refresh_part', :to => 'welcome#refresh_part'
  root 'welcome#index'
end