Rails.application.routes.draw do
  resources :vehicle_types
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "welcome#index"
end
