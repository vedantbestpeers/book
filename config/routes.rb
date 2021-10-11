Rails.application.routes.draw do
  get 'items/index'
  root 'notes#index'

  resources :notes do
    resources :item
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
