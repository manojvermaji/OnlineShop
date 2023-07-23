Rails.application.routes.draw do
  get 'cards/show'
  resources :products
  root 'shops#index'
  resources :shops, only:[:index, :show]
  resources :order_items
  resource :cards, only:[:show]
end
