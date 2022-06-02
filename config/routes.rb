# frozen_string_literal: true

Rails.application.routes.draw do
  root 'pages#show', page: 'home'
  get '/pages/*page' => 'pages#show'
end
