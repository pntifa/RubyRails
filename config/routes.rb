Rails.application.routes.draw do
  # Define a custom route for API registration
  post '/api/register', to: 'registrations#create'

  # Define your existing routes for articles
  root 'articles#private'
  resources :articles
end
