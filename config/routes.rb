Hn::Application.routes.draw do
  resources :users do
    resources :emails
  end

  resource :session
end
