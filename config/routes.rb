# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :admins
  resources :sessions, only: %i[create destroy]
  # root to: 'home#index'

  mount ActionCable.server => '/cable'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
