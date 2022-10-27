Rails.application.routes.draw do
  root to: 'homes#top'
  devise_for :users
  resources :users, only:[:show]
  resources :bank_passbooks, only:[:create,:show,:destroy] do
    resources :passbook_histories, only:[:create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
