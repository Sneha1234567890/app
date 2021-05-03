Rails.application.routes.draw do
  resources :users
  resources :friends
  #get 'home/index'
  get 'home/about'
  root 'home#index'
  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post 'download_csv', to: "friends#download_csv"
end
