Rails.application.routes.draw do
  get 'landing/index'
  resources :organizations do
    resources :rants
    collection do
      match 'search' => 'organizations#search', via: [:get, :post], as: :search
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
  root "landing#index"
end
