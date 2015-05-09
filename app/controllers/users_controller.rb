class UsersController < ApplicationController
  before_filter :authenticate_user!
  def index
    @users = User.all
  end

  def show
    user
    @joined_on = @user.created_at.to_formatted_s(:short)
    if @user.current_sign_in_at
      @last_login = @user.current_sign_in_at.to_formatted_s(:short)
    else
      @last_login = "never"
    end
  end

  private
  def user
    @user = User.find(params[:id])
  end
end
