# frozen_string_literal: true

Rails.application.routes.draw do
  get 'welcome/index'
  root to: 'welcome#index'
  get 'webhooks_controller/callback'
  resources :bots
  #scope '(:locale)', locale: /en|ru/ do
  #  get 'welcome/index'
  #  root to: 'welcome#index'
  #end

  namespace :webhooks do
    #Bot.all&.each do |bot|
    #  post "/telegram_#{bot.prefix}" => 'webhooks#callback'
    #end
    # post '/telegram_dnfsdmfkenjwekfmksdmdfnej' => 'webhooks#callback'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
