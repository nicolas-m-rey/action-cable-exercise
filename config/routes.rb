Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  devise_scope :user do
    root to: "devise/sessions#new"
  end

  resources :rooms
  resources :messages
  post '/banana', to: "messages#message", as: :message_page

  

end
