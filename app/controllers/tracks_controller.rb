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
    @track = Track.create(track_params)

    redirect_to track_url(@track)
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

  private
  def track_params
    params.require(:track).permit(:album_id, :name, :track_type)
  end
end
