Rails.application.routes.draw do
  resources :server_sizes
  resources :vm_sizes
  resources :vms
  resources :servers
  
  root 'servers#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
