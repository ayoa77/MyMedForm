class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @forms = Form.where(user_id: @user.id)
  end
  def index
    @users = User.all
  end
end
