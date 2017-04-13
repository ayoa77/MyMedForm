class UsersController < ApplicationController
  def index
    @users = User.all #admin only
  end
end
