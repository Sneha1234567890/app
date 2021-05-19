Rails.application.routes.draw do
  resources :friends
  get 'home/index'
  get 'home/about '
  root 'home#index'
  post 'download_csv', to: "friends#download_csv"
end
