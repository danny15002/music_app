class BandsController < ApplicationController
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
    @band = Band.create(band_params)

    redirect_to band_url(@band)
  end

  def new
    @band = Band.new
  end

  def edit
    @band = Band.find(params[:id])
  end

  def show
    @band = Band.find(params[:id])
  end

  def update

  end

  def destroy

  end

  private
  def band_params
    params.require(:band).permit(:name)
  end


end
