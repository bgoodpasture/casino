Rails.application.routes.draw do
  get 'home/index'
  root 'home#index'

  get '/', to: 'home#index'
  get 'equipment', to: 'home#equipment'
  get 'faq', to: 'home#faq'
  get 'contact', to: 'home#contact'
  get 'about', to: 'home#about'
  post 'email', to: 'email#send'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
