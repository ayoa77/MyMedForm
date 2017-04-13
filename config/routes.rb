Rails.application.routes.draw do
  resources :patients, only: [:index, :show] do
    resources :medforms
  end

  resources :hospital, only: [:show]
  devise_for :users
  devise_for :hospitals
  devise_for :patients
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to: "home#index"
end
