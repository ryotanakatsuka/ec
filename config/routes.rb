Rails.application.routes.draw do
  root to: "items#index"
  
  resources :line_items
  resources :carts
  
  devise_for :users,controllers:{
    registrations: 'users/registrations'
  }
  devise_scope :user do
    get 'addresses', to: 'users/registrations#new_address'
    post 'addresses', to: 'users/registrations#create_address'
  end
  
  resources :items do
    resources :orders,only:[:new,:create] 
  end

  resources :news
  
  resources :carts, only: [:show]

  post '/add_item' => 'carts#add_item'
  post '/update_item' => 'carts#update_item'
  delete '/delete_item' => 'carts#delete_item'
  
    

end
