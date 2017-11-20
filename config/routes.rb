Rails.application.routes.draw do
  get 'index', to: 'home#index'
  get 'technical_machines/:id', to: 'home#show', as: 'technical_machine'
  get 'information', to: 'home#information', as: 'information'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
