Rails.application.routes.draw do
  devise_for :patients, :class_name => 'Patient::User', :controllers => {:registrations => "user/patient/registartions",:sessions => 'main'} do
    get "patient_user/sign_up" => "user/patient/registrations#new", :as => :patient_user_signup
    get "patient_user/sign_in" => "main#index", :as => :patient_user_signin
  end
  devise_for :hospitals, :class_name => 'Hospital::User', :controllers => {:registrations => "user/hospital/registartions",:sessions => 'main'} do
    get "hospital_user/sign_up" => "user/hospital/registrations#new", :as => :hospital_user_signup
    get "hospital_user/sign_in" => "main#index", :as => :hospital_user_signin
  end
  resources :users, only: [:index, :show] do
    resources :medforms
  end

    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to: "home#index"
end
