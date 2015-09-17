class UsersController < ApplicationController

  def new
    @user = User.new
    render :new
  end

  def create
    @user = User.new(user_params) # need username and password.

    if @user.save
      log_in!(@user)
      redirect_to bands_url
    else
      # @user.full_messages[:failed_sign_up] = 'Cannot use that username/password'
      redirect_to new_session_url
    end
  end

  def show
    render :show
  end

  private
  def user_params
    params.require(:user).permit(:email, :password)
  end


end
