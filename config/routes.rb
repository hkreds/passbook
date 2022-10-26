Rails.application.routes.draw do
  root to: 'homes#top'
  devise_for :users
  resources :users, only:[:index,:show]
  resources :bank_passbooks, only:[:new,:create,:show,:destroy]
  resources :passbook_historys, only:[:create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
