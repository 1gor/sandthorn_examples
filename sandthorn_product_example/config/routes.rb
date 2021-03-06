SandthornProductExample::Application.routes.draw do
  root "welcome#index"

  #actice record product routes
  resources :products

  #sandthorn product routes
  match "/sandthorn/products/index" => "sandthorn_products#index", :via => "get"
  match "/sandthorn/products/new" => "sandthorn_products#new", :via => "get"
  match "/sandthorn/products/" => "sandthorn_products#new", :via => "get"
  match "/sandthorn/product/:id" => "sandthorn_products#show", :via => "get"
  match "/sandthorn/product/:id/update" => "sandthorn_products#update", :via => "post"
  match "/sandthorn/product/:id/edit" => "sandthorn_products#edit", :via => "get"
  match "/sandthorn/products" => "sandthorn_products#create", :via => "post"
  match "/sandthorn/products/create" => "sandthorn_products#create", :via => "post"
  match "/sandthorn/product/:id/destroy" => "sandthorn_products#destroy", :via => "post"

  match "/sandthorn/product/:id/change_name" => "sandthorn_products_tasked_based#change_name", :via => "post"
  match "/sandthorn/product/:id/change_price" => "sandthorn_products_tasked_based#change_price", :via => "post"
  match "/sandthorn/product/:id/in_stock" => "sandthorn_products_tasked_based#in_stock", :via => "post"
  match "/sandthorn/product/:id/out_of_stock" => "sandthorn_products_tasked_based#out_of_stock", :via => "post"
  match "/sandthorn/product/:id/discontinue" => "sandthorn_products_tasked_based#discontinue", :via => "post"
  match "/sandthorn/product/:id/put_on_sale" => "sandthorn_products_tasked_based#put_on_sale", :via => "post"
  match "/sandthorn/product/:id/remove_from_sale" => "sandthorn_products_tasked_based#remove_from_sale", :via => "post"

  match "/sandthorn/log" => "sandthorn_products_tasked_based#get_log", :via => "get"


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
