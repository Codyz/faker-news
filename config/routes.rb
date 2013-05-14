Hn::Application.routes.draw do
  root :to => "posts#index"
  resources :users do
    resources :emails
  end

  resource :session

  resources :posts
  resources :comments

end
