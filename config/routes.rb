Rails.application.routes.draw do
  get 'home/index'
  root 'home#index'

  get '/', to: 'home#index'
  get 'equipment', to: 'home#equipment'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
