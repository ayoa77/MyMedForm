class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  devise_group :user, contains: [:patient, :hospital]
  before_action :authenticate_user!
#   alias_method :devise_current_user, :current_user
# def current_user
#   devise_current_user || current_volunteer
# end
end
