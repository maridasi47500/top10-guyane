Rails.application.routes.draw do
  resources :songs
  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations' }
  get "classement-du-:date", to: 'classements#show', as: :monclassement
  get "contact", to: 'contact#index'
  get "video", to:  'video#index'
  resources :hits
  resources :classements
  root to: 'welcome#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
