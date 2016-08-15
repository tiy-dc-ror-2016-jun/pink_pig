class UsersController < ApplicationController
  before_action :authenticate_user!

  def create
  end

  def index
    @users = User.all
  end

  def update
    User.find(params[:id]).update(role: "manager")
    redirect_to users_path
  end
end
