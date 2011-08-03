Planting::Application.routes.draw do
  
  root :to => "answers#home"
  
  match 'answers/linux' => 'answers#linux', :as => "linux"
  match 'answers/git' => 'answers#git', :as => "git"
  match 'answers/css' => 'answers#css_usage', :as => "css"
  match 'answers/weather' => 'answers#google_api', :as => "weather"
  match 'answers/files' => 'answers#files_operations', :as => "files"
  match 'answers/users' => 'answers#duplicated_users', :as => "dup_users"
  
  match 'introductions/why' => 'introductions#why', :as => "why"
  match 'introductions/basic_info' => 'introductions#basic_info', :as => "basic_info"
  match 'introductions/showcase' => 'introductions#showcase', :as => "showcase"
  
  match 'users/delete_duplicate' => 'users#delete_duplicate', :as => 'delete_duplicate'  
  
  resources :users
  
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
