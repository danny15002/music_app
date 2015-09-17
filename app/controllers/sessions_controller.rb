class SessionsController < ApplicationController

  def new
    @user = User.new
    render :new
  end

  def create
    @user = User.find_by_credentials(user_params[:email],
                                     user_params[:password]) # need username and password.

    if @user
      log_in!(@user)
      redirect_to bands_url
    else
      # @user.full_messages[:failed_sign_up] = 'Cannot use that username/password'
      redirect_to :new
    end
  end

  def destroy
    log_out!
    redirect_to new_session_url
  end

  private
  def user_params
    params.require(:user).permit(:email, :password)
  end
end
