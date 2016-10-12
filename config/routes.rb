Rails.application.routes.draw do

  
  
  resources :invoices, path: 'backend/invoices' do
    resources :invoice_items, path: 'backend/invoice_items'
  end
  
  
  devise_for :clients, path: 'client_auth'
  devise_for :employees, path: 'employee_auth'

  get 'costumers', controller: :costumers, action: :home, alias: 'costumers'
  get 'eventos', controller: :costumers, action: :eventos, alias: 'eventos'
  get 'locales', controller: :costumers, action: :locales, alias: 'locales'
  get 'contacto', controller: :costumers, action: :contacto, alias: 'contacto'
  get 'reservas', controller: :costumers, action: :reservas, alias: 'reservas'
  get 'pedidos', controller: :costumers, action: :pedidos, alias: 'pedidos'
  get 'canciones', controller: :costumers, action: :canciones, alias: 'canciones'
  get 'comentar', controller: :costumers, action: :comentar, alias: 'comentar'
  get 'reservas/:id/cancelar', controller: :costumers, action: :cancel_reservation, as: :cancel_reservation
  get 'pedidos/:id/cancelar', controller: :costumers, action: :cancel_order, as: :cancel_order
  get 'canciones/:id/cancelar', controller: :costumers, action: :cancel_song, as: :cancel_song
  match '/costumers/add_reservation', to: 'costumers#add_reservation', via: 'post'
  match '/costumers/add_order', to: 'costumers#add_order', via: 'post'
  match '/costumers/add_song', to: 'costumers#add_song', via: 'post'
  match '/costumers/add_comment', to: 'costumers#add_comment', via: 'post'


  resources :products, path: 'backend/products'
  resources :orders, path: 'backend/orders'
  resources :reservations, path: 'backend/reservations'
  resources :events, path: 'backend/events'
  resources :categories, path: 'backend/categories'
  resources :employees, path: 'backend/employees'
  resources :employee_roles, path: 'backend/employee_roles'
  resources :songs, path: 'backend/songs'
  resources :genres, path: 'backend/genres'
  resources :singers, path: 'backend/singers'
  resources :rooms, path: 'backend/rooms'
  resources :clients, path: 'backend/clients'
  resources :shops, path: 'backend/shops'
  resources :playlists, path: 'backend/playlists'
  resources :comments, path: 'backend/comments'
  get 'welcome/homepage', path: 'backend'

  #mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  root 'costumers#home'
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
  #     #     resources :sales do
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
