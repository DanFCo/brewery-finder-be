Rails.application.routes.draw do
  resources :breweries
  post "/search", to: "breweries#search"
  get "/us-states", to: "breweries#us_states"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
