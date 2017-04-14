class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  devise_group :user, contains: [:patient, :hospital]
  before_action :authenticate_user!
end
