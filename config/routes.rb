# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  draw :turbo

  resource :org_chart, only: :show
  resource :team_chart, only: :show
  resources :reports, only: :index
  resource :reset_data, only: :show
  resources :settings, only: :index
  resources :job_families

  namespace :reteamer_api do
    resources :assignments, only: [:create, :update, :destroy], param: :key
    resources :job_families, only: [:index, :update, :destroy]
    resources :open_reqs, only: [:create, :update], param: :key
    resource :org_chart, only: :show
    resources :people, only: [:create, :update, :destroy], param: :key do
      collection do
        post :update_supervisor
      end
    end
    resource :person_form_drop_downs, only: [:show]
    resources :proposals, only: [:create] do
      post :switch, on: :collection
    end
    resources :sales_recruitings, only: :index
    resources :selected_date, only: :index, controller: :selected_date
    resources :supervisors, only: :index
    resources :team_parents, only: [:update], param: :key
    resource :team_chart, only: :show
    resources :teams, only: [:index, :create, :update, :destroy], param: :key
  end

  # Jumpstart views
  if Rails.env.development? || Rails.env.test?
    mount Jumpstart::Engine, at: "/jumpstart"
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end

  # Administrate
  authenticated :user, lambda { |u| u.admin? } do
    namespace :admin do
      if defined?(Sidekiq)
        require "sidekiq/web"
        mount Sidekiq::Web => "/sidekiq"
      end

      resources :announcements
      resources :users do
        resource :impersonate, module: :user
      end
      namespace :user do
        resources :connected_accounts
      end
      resources :accounts
      resources :account_users
      resources :plans
      namespace :pay do
        resources :customers
        resources :charges
        resources :payment_methods
        resources :subscriptions
      end

      root to: "dashboard#show"
    end
  end

  # API routes
  namespace :api, defaults: {format: :json} do
    namespace :v1 do
      resource :auth
      resource :me, controller: :me
      resource :password
      resources :accounts
      resources :users
      resources :notification_tokens, only: :create
    end
  end

  # User account
  if Rails.configuration.allow_sign_up
    devise_for :users,
      controllers: {
        omniauth_callbacks: "users/omniauth_callbacks",
        registrations: "users/registrations",
        sessions: "users/sessions"
      }
  else
    devise_for :users,
      controllers: {
        sessions: "users/sessions"
      }
  end
  devise_scope :user do
    get "session/otp", to: "sessions#otp"
  end

  resources :announcements, only: [:index]
  resources :api_tokens
  resources :accounts do
    member do
      patch :switch
    end

    resource :transfer, module: :accounts
    resources :account_users, path: :members
    resources :account_invitations, path: :invitations, module: :accounts
  end
  resources :account_invitations

  # Payments
  resources :payment_methods
  resources :subscriptions do
    resource :cancel, module: :subscriptions
    resource :pause, module: :subscriptions
    resource :resume, module: :subscriptions
    collection do
      patch :info
    end
  end
  resources :charges do
    member do
      get :invoice
    end
  end

  namespace :account do
    resource :password
  end
  resources :notifications, only: [:index, :show]
  namespace :users do
    resources :mentions, only: [:index]
  end
  namespace :user, module: :users do
    resource :two_factor, controller: :two_factor do
      get :backup_codes
      get :verify
    end
    resources :connected_accounts
  end

  namespace :action_text do
    resources :embeds, only: [:create], constraints: {id: /[^\/]+/} do
      collection do
        get :patterns
      end
    end
  end

  scope controller: :static do
    get :about
    get :terms
    get :privacy
    get :pricing
    get :cookie
    get :acceptable_use
  end

  scope :style_guide, controller: :style_guide do
    get :date_navigator
    get :simple_date_navigator
    get :effective_date_fields
    get :person_node
    get :team_node
  end

  post :sudo, to: "users/sudo#create"

  match "/404", via: :all, to: "errors#not_found"
  match "/500", via: :all, to: "errors#internal_server_error"

  authenticated :user do
    root to: "dashboard#show", as: :user_root
    # Alternate route to use if logged in users should still see public root
    # get "/dashboard", to: "dashboard#show", as: :user_root
  end

  # Public marketing homepage
  root to: "static#index"
end
