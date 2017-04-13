Rails.application.routes.draw do
  resources :patients, only: [:index, :show, :new, :create] do
    resources :medforms
  end

  resources :hospital, only: [:show]
  devise_for :users
  devise_for :hospitals, controllers: { registrations: "hospitals/registrations", sessions: "hospitals/sessions" }
  devise_for :patients, controllers: { registrations: "patients/registrations", sessions: "patients/sessions" }
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to: "home#index"
end
