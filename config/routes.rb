# frozen_string_literal: true

Rails.application.routes.draw do
  get 'welcome/index'
  root to: 'welcome#index'
  get 'webhooks_controller/callback'
  resources :bots
  namespace :webhooks do
    post '*other' => 'webhooks#callback'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
