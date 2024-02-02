Rails.application.routes.draw do

  Blog::Application.routes.draw do
    root 'articles#index'
    resources :articles
  end

end