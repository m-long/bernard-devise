# frozen_string_literal: true

Rails.application.routes.draw do
  # Site root
  root 'static_pages#home'

  # User routes
  devise_for :users
  resources :users
end
