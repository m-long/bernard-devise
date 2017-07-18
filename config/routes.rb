# frozen_string_literal: true

Rails.application.routes.draw do
  # Site root
  root 'static_pages#home'

  # User routes
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  resources :keys
  resources :remotes
  resources :devices
  resources :device_types
  resources :device_models
  resources :device_brands
  resources :locations
end
