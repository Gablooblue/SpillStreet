Rails.application.routes.draw do
  get 'landing/index'
  resources :organizations, except: [:destroy] do
    get :autocomplete_organization_name, on: :collection
    resources :rants, shallow: true, except: [:edit, :destroy, :update]
    collection do
      match 'search' => 'organizations#search', via: [:get, :post], as: :search
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
  root "landing#index"
end
