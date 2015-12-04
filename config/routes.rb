Rails.application.routes.draw do
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

  resources :users do
    resources :comments
  end

  root 'home#index'

  post '/login' => 'session#create'
  delete '/session' => 'session#destroy'

  get '/test_profile' => 'home#test_profile'

#              Prefix Verb   URI Pattern                                 Controller#Action
#     user_comments GET    /users/:user_id/comments(.:format)          comments#index
#                   POST   /users/:user_id/comments(.:format)          comments#create
#  new_user_comment GET    /users/:user_id/comments/new(.:format)      comments#new
# edit_user_comment GET    /users/:user_id/comments/:id/edit(.:format) comments#edit
#      user_comment GET    /users/:user_id/comments/:id(.:format)      comments#show
#                   PATCH  /users/:user_id/comments/:id(.:format)      comments#update
#                   PUT    /users/:user_id/comments/:id(.:format)      comments#update
#                   DELETE /users/:user_id/comments/:id(.:format)      comments#destroy
#             users GET    /users(.:format)                            users#index
#                   POST   /users(.:format)                            users#create
#          new_user GET    /users/new(.:format)                        users#new
#         edit_user GET    /users/:id/edit(.:format)                   users#edit
#              user GET    /users/:id(.:format)                        users#show
#                   PATCH  /users/:id(.:format)                        users#update
#                   PUT    /users/:id(.:format)                        users#update
#                   DELETE /users/:id(.:format)                        users#destroy
#              root GET    /                                           home#index
#             login POST   /login(.:format)                            session#create
#           session DELETE /session(.:format)                          session#destroy

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
