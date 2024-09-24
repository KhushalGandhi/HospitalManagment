Rails.application.routes.draw do
  devise_for :users
  resources :patients do
    collection do
      get 'graph'
    end
  end
  root "patients#index"
end
