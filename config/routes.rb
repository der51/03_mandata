Rails.application.routes.draw do

  resources :archives do
    get :autocomplete_user_email, :on => :collection
    resources :profiles
  end

  resources :reservations
  resources :users do
    get 'search', :on => :collection
  end
  get 'dashboard/index'

  resources :family_relations
  resources :notaries
  resources :work_experiences
  resources :educations
  resources :deposits
  resources :house_purchases
  resources :loans

  mount RailsSettingsUi::Engine, at: 'settings'

  root 'dashboard#index'

  devise_for :users, controllers: { passwords: "users/passwords", sessions: "users/sessions", registrations: "users/registrations"}
  devise_for :staffs, controllers: { passwords: "staffs/passwords", sessions: "staffs/sessions", registrations: "staffs/registrations"}


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

  # Example resource route with concernse
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
