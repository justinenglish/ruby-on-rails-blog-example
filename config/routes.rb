Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'posts#index', as: 'home'

  get 'about' => 'pages#about', as: 'about'
  # get '/rails/info/routes' => 'routes'

  resources :posts do 
    resources :comments
  end
end
