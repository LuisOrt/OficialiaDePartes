Rails.application.routes.draw do
  resources :no_de_correos
  resources :departamentos
  resources :passwords, controller: "clearance/passwords", only: [:create, :new]
  resource :session, controller: "clearance/sessions", only: [:create]

  resources :users, controller: "clearance/users", only: [:create] do
    resource :password,
      controller: "clearance/passwords",
      only: [:create, :edit, :update]
  end

  get "/sign_in" => "clearance/sessions#new", as: "sign_in"
  delete "/sign_out" => "clearance/sessions#destroy", as: "sign_out"
  get "/sign_up" => "clearance/users#new", as: "sign_up"
  get 'home/index'

  resources :no_de_oficios
  resources :registros
  resources :user
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  constraints Clearance::Constraints::SignedIn.new { |user| user.admin? } do
    root to: "home#index"
  end

  constraints Clearance::Constraints::SignedIn.new { |user| user.oficialia? } do
    root to: "oficialia#index"
  end

  constraints Clearance::Constraints::SignedIn.new do
    root to: "no_de_oficios#new"
  end

  root to: "home#index"
  resources :user, only: [:update]
end
