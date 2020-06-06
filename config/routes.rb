Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  post 'newsletter-form' => 'newsletter_form#create'

  # Review routes
  get 'reviews', to: 'reviews#index'
  get 'reviews/new', to: 'reviews#new'
  post 'reviews', to: 'reviews#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
