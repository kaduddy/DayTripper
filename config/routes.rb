Rails.application.routes.draw do
  get 'extras/new/:itin_id' => 'extras#new'

  post 'extras/create/:itin_id' => 'extras#create'

  #DAYS
  get 'days/new/:itin_id/:user_id' => 'days#new'

  post 'days/create/:itin_id' => 'days#create'  

  #ITINERARIES

  get 'itineraries/:user_id' => 'itineraries#index'

  get 'itineraries/new/:user_id' => 'itineraries#new'

  post 'itineraries/create/:user_id' => 'itineraries#create'

  get 'itineraries/show/:itin_id' => 'itineraries#show'

  #USERS

  post 'users/create'

  get 'users/:id' => 'users#show'

  #SESSIONS

  get 'sessions/new'

  post 'sessions/create'

  get 'sessions/destroy'

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
