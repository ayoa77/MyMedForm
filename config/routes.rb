Rails.application.routes.draw do
  resources :users, only: [:index, :show] do
    resources :medforms
  end

    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to: "home#index"
end
