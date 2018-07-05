Rails.application.routes.draw do
  resources :server_sizes
  resources :vm_sizes

  resources :servers do
      resources :vms, only: [:new, :create]
  end

  resources :vms, only: [:index, :show, :update, :edit, :destroy]

  root 'servers#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
