Rails.application.routes.draw do
  # Book Routes
  resources :books

  # Login Routes
  get 'sign_in', to: 'login#new'
  post 'sign_in', to: 'login#create'

  # Logout Route
  delete 'sign_out', to: 'login#destroy'

  # Registration Routes
  get 'sign_up', to: 'registration#new'
  post 'sign_up', to: 'registration#create'

  # User Routes
  get 'profile', to: 'user#profile'

  # Root Route
  root 'home#index'
end
