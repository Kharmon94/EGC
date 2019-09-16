Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  devise_for :students
  ActiveAdmin.routes(self)
  get 'students/show'
  resources :signal_users
  resources :contacts
  get 'pages/about'
  get 'pages/terms'
  root to: "pages#home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
