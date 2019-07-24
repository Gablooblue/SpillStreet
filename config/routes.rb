Rails.application.routes.draw do
  get 'terms_and_conditions', to: "static_pages#terms_and_conditions", as: "terms_and_conditions"
  get 'privacy_policy', to: "static_pages#privacy_policy", as: "privacy_policy"
  get 'community_guidelines', to: "static_pages#community_guidelines", as: "community_guidelines"
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
