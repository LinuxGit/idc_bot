Rails.application.routes.draw do
  resources :vms
  resources :servers
  
  root 'servers#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
