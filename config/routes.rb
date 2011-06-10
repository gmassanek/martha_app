MarthaApp::Application.routes.draw do
  get "users/reset_password"
  get "admin/index"
  get "admin/registrations"
  get "admin/confirm_payment"
  get "registrations/confirm_payment"

  match '/register', :to => 'registrations#new'
  match '/admin', :to => 'admin#index'
  match '/login', :to => 'users#login'
  match '/logout', :to => 'users#logout'
  match '/home', :to => 'pages#home'
  match '/conference', :to => 'pages#conference'
  match '/schedule', :to => 'pages#conference'
  match '/hotel', :to => 'pages#hotel'
  match 'downloads/light_rail_map', :to => 'downloads#light_rail_map'
  match '/planning', :to => 'pages#planning'
  match '/hotel', :to => 'pages#hotel'
  match '/sessions', :to => 'pages#sessions'
  match '/speakers', :to => 'pages#speakers'
  match '/mission', :to => 'pages#mission'
  match '/history', :to => 'pages#history'
  match '/faq', :to => 'pages#faq'
  match '/contact', :to => 'contacts#new'
  match '/survey', :to => 'questionaires#new' 
  match '/baltimore', :to => 'pages#baltimore'
  resources :subscriptions
  resources :contacts
  resources :announcements
  resources :registrations
  resources :users
  resources :questionaires
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
  root :to => "pages#home"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end

