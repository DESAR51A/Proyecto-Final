Rails.application.routes.draw do
  devise_for :clients
  devise_for :employees
  resources :orders
  resources :reservations
  resources :events
  resources :categories
  resources :employees
  resources :employee_roles
  resources :songs
  resources :genres
  resources :singers
  
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'costumers', controller: :costumers, action: :home, alias: 'costumers'
  get 'eventos', controller: :costumers, action: :eventos, alias: 'eventos'
  get 'locales', controller: :costumers, action: :locales, alias: 'locales'
  get 'contacto', controller: :costumers, action: :contacto, alias: 'contacto'
  
  resources :rooms
  resources :clients
  resources :products
  resources :shops
  get 'welcome/homepage'
  #root 'shops#index'
  root 'welcome#homepage'
  
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
