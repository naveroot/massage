# frozen_string_literal: true

Rails.application.routes.draw do
  scope "(:locale)", locale: /en|ru/ do
    get "welcome/index"
    root to: 'welcome#index'
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
