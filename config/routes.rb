Babystore::Application.routes.draw do
  devise_for :admins

  root :controller => :items, :action => :index
  # devise_for :admins
  # resources :items, :only => [:index]
  
  # resources :categories, :only => [] do
  #   resources :items, :only => [:index, :show]
  # end
  # resources :orders, :only => [:new, :create]
  # resource :about, :only => [:show]
  # resource :cart, :only => [:create] do
  #   member do
  #     post :decrease
  #     post :clear
  #   end
  # end
  # namespace :admin do
  #   root :controller => :base, :action => :show
  #   resources :orders, :only => [:index, :show, :update]
  #   resources :base, :controller => :base, :only => [:update]
  #   resources :items, :only => [:new, :create, :edit, :update]
  #   resources :categories, :only => [:new, :create]
  #   resources :settings, :only => [:new, :create, :index]
  # end

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
