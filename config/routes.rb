Rails.application.routes.draw do
  resources :users
  resources :friends
  #get 'home/index'
  get 'home/about'
  root 'home#index'
  get 'home/contacts'
  get "/fetch_items" => 'items#from_category', as: 'fetch_items'
  resources :contacts
  #root 'welcome#index'
  post 'download_csv', to: "friends#download_csv"
end
