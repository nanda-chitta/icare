# frozen_string_literal: true

Rails.application.routes.draw do
  root             'dashboard#home'
  get 'help'    => 'dashboard#help'
  get 'about'   => 'dashboard#about'
  get 'contact' => 'dashboard#contact'

  devise_for :users
  resources :users
end
