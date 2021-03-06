class UsersController < ApplicationController
  def new
    @user = User.new
  end
  def create
    @new_user = User.new(user_params)

    if @new_user.save
      session[:user_id] = @new_user.id
      redirect_to root_path
    else
      @user = @new_user
      render 'new'
    end
  end

  private

  def user_params
    params.require(:user).permit([:email, :password])
  end
end
