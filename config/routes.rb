ActionController::Routing::Routes.draw do |map|
  
  map.resources :admin_sessions
  map.resources :admins
  map.resources :employees
  map.resources :code_blogs
  map.resources :clients
  map.resources :services
  map.resources :blogs
  
  map.admin_login "admin-login", :controller => "admin_sessions", :action => "new"
  map.admin_logout "admin-logout", :controller => "admin_sessions", :action => "destroy"
  map.admin_blog "admin-blogs", :controller => "admins", :action => "admin_blogs"
  map.admin_service "admin-services", :controller => "admins", :action => "admin_services"
  map.admin_client "admin-clients", :controller => "admins", :action => "admin_clients"
  map.admin_codeblog "admin-codeblog", :controller => "admins", :action => "admin_codeblog"
  map.admin_employee "admin-employees", :controller => "admins", :action => "admin_employees"
  
  map.contact_mailer "contact-cube2media", :controller => 'contacts', :action => "contact_us"
  
  
  # The priority is based upon order of creation: first created -> highest priority.

  # Sample of regular route:
  #   map.connect 'products/:id', :controller => 'catalog', :action => 'view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   map.purchase 'products/:id/purchase', :controller => 'catalog', :action => 'purchase'
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   map.resources :products

  # Sample resource route with options:
  #   map.resources :products, :member => { :short => :get, :toggle => :post }, :collection => { :sold => :get }

  # Sample resource route with sub-resources:
  #   map.resources :products, :has_many => [ :comments, :sales ], :has_one => :seller
  
  # Sample resource route with more complex sub-resources
  #   map.resources :products do |products|
  #     products.resources :comments
  #     products.resources :sales, :collection => { :recent => :get }
  #   end

  # Sample resource route within a namespace:
  #   map.namespace :admin do |admin|
  #     # Directs /admin/products/* to Admin::ProductsController (app/controllers/admin/products_controller.rb)
  #     admin.resources :products
  #   end
  
  map.root :controller => "home", :action => "index"

end
