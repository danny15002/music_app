class AlbumsController < ApplicationController
  before_action :check_login

  def check_login
    unless logged_in?
      redirect_to new_user_url
    end
  end

  def index
    render :index
  end

  def create

  end

  def new
    @album = Album.new
  end

  def edit

  end

  def show
    @album = Album.find(params[:id])
  end

  def update

  end

  def destroy

  end
end
