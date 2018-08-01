Rails.application.routes.draw do
  resources :incidents do
  collection do
    get 'create_incident'
  end
end
  root :to => "home#index"
end
