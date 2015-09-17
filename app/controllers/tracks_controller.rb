class TracksController < ApplicationController
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
    @track = Track.new
  end
  
  def edit

  end

  def show
    @track = Track.find(params[:id])
  end

  def update

  end

  def destroy

  end
end
