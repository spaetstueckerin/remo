Remo::Application.routes.draw do

  resources :produced_units


  resources :productions


  resources :product_ranges


  post 'checklists/saveform', :controller => 'checklists', :action => 'saveform'

  resources :checklists
  resources :checklist_category_items
  resources :checklist_categories
  resources :checklist_definitions
  resources :checklist_properties do
    member do
      post 'updateform'
    end
  end

  resources :measurings
  resources :measuring_data
  
  match '/benchmarking/index', :controller => 'benchmarking', :action => 'index'
  resources :benchmarking
  
  resources :meters
  resources :meter_readings
  resources :meter_types
  resources :produktion_sites
  resources :buildings
  resources :machineries
  resources :production_levels
  resources :machinery_types
  resources :thermo_oil_demands
  resources :thermo_oil_consumption_years
  resources :thermo_oil_consumptions
  resources :thermo_oil_distribution_years
  resources :thermo_oil_distributions
  resources :thermo_oil_production_years
  resources :thermo_oil_productions
  resources :cold_demands
  resources :cold_consumption_years
  resources :cold_consumptions
  resources :cold_distribution_years
  resources :cold_distributions
  resources :cold_production_years
  resources :cold_productions
  resources :hot_water_demands
  resources :hot_water_consumption_years
  resources :hot_water_consumptions
  resources :hot_water_distribution_years
  resources :hot_water_distributions
  resources :hot_water_production_years
  resources :hot_water_productions
  resources :steam_consumptions
  resources :steam_demands
  resources :steam_distribution_years
  resources :steam_distributions
  resources :steam_production_years
  resources :steam_productions
  resources :compressed_air_demands
  resources :compressed_air_consumption_years
  resources :compressed_air_distribution_years
  resources :speed_regulations
  resources :compressed_air_production_years
  resources :years
  resources :compressed_air_consumers
  resources :compressed_air_distributions
  resources :compressed_air_productions
  resources :lightings
  resources :locations
  resources :enterprise_data_types
  resources :production_data_types
  resources :energy_data_types
  resources :enterprise_data
  resources :energy_data
  resources :production_data
  resources :business_data
  resources :business_data_types
  resources :bills
  resources :contracts
  resources :branches
  resources :enterprises
  resources :roles
  resources :energy_mixes

  root :to => "sessions#new"

  resources :users
  resources :todos
  resources :howtos

  get "welcome/index"
  get "sites/monitoring"
  get "sites/general"
  get "sites/internal"
  get "sites/controlling"
  get "sites/compressedAir"
  get "sites/steam"
  get "sites/hotWater"
  get "sites/thermoOil"
  get "sites/cold"
  get "sites/reporting"
  get "sites/crossSection"
  get "sites/goals"
  get "sites/checklists_manager"
    
  get "reports/lastenmanagement"
  get "reports/lastenmanagementpdf"
  post 'reports/full_report', :controller => 'reports', :action => 'full_report'
  get 'reports/report', :controller => 'reports', :action => 'report'
  #get  'reports/pdf_report'
  get  'reports/norm_report'
  get  'reports/norm_reportpdf'
  get 'reports/reportpdf'
    
  get "login" => "sessions#new", as: "login"
  post "sessions" => "sessions#create", as: "sessions"
 # delete "logout" => "sessions#destroy", as: "logout"

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
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
