Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
    root 'sessions#new'
    get '/books' => 'books#index'
    #get '/books/genres' => 'books#genres'
    get '/books/new' => 'books#new'
    post '/books' => 'books#create'
    get '/books/edit/:id' => 'books#edit'
    #get '/books/read/:id' => 'books#read'
    post '/books/:id' => 'books#update'
    get '/books/:id' => 'books#show'

    get '/users' => 'users#index'
    get '/users/login' => 'sessions#new'
    post '/users/login' => 'sessions#create'
    delete '/users/logout' => 'sessions#destroy'

    get '/users/new' => 'users#new'
    post '/users' => 'users#create'
    get '/users/edit/:id' => 'users#edit'
    post'/users/edit/:id' => 'users#update'
    get '/users/:id' => 'users#show'

    get '/clubs' => 'clubs#index'
    post '/clubs' => 'clubs#create'
    get '/clubs/new' => 'clubs#new'
    get '/clubs/edit/:id' => 'clubs#edit'
    post '/clubs/join/:id' => 'clubs#join'
    post '/clubs/leave/:id' => 'clubs#leave'
    post '/clubs/:id' => 'clubs#update'
    get '/clubs/:id' => 'clubs#show'

    post '/comments' => 'comments#create'

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


