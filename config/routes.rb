Rails.application.routes.draw do

  resources :notifies

  # get      'sessions/new'
  root     'static#index'

  get      '/login',              to: 'sessions#new'
  post     '/login',              to: 'sessions#create'
  delete   '/logout',             to: 'sessions#destroy'

  #get      '/trips/:id/join',     to: 'trips#join_html'
  get     '/trips/:id/join',     to: 'trips#join'      # zapis na tripa
  get     '/trips/:id/unjoin',   to: 'trips#unjoin'    # opuszczanie tripa

  get      '/trips/:id/places',   to: 'trips#places'
  get      '/trips/:id/addplace', to: 'trips#addplace'
  get      '/trips/:id/removeplace',   to: 'trips#removeplace'

  get     '/trips/:id/posts',     to: 'trips#posts'
  get     '/trips/delete',        to: 'trips#destroy'

  get     '/places/:id/reviews',     to: 'places#reviews'
  post     '/places/:id/reviews',     to: 'reviews#create'
  get     '/places/:id/reviews/:reviewid',     to: 'reviews#show'
  delete  '/places/:id/reviews/:reviewid',     to: 'reviews#destroy'
  get     '/towns/:id/places',           to: 'towns#places'

  get     '/users/:id/friends',        to: 'users#friends'

  get     '/users/send',              to: 'users#send_notify'

  post    '/device_id',      to: 'users#set_device_id'

  resources :towns
  resources :types
  # resources :reviews

  resources :places do
    resources :reviews
  end

  resources :trips do
    resources :posts
  end

  resources :users

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"


  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
