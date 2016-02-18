class ItinerariesController < ApplicationController
  def index
  	@user = User.find(params[:user_id])
    if params[:search]
      @itineraries = Itinerary.search(params[:search]).order("created_at DESC")
    else
      @itineraries = Itinerary.limit(10).order("created_at DESC")
    end
  end

  def new
  	@user = User.find(params[:user_id])
  end

  def create
  	@user = User.find(params[:user_id])
  	@itinerary = Itinerary.create(itin_params)
  	redirect_to "/days/new/#{@itinerary.id}/#{@user.id}"
  end

  def show
    @itinerary = Itinerary.find(params[:itin_id])
    @day = Day.find_by(itinerary_id: params[:itin_id])
    @user = User.find(Itinerary.find(params[:itin_id]).user_id)
    @extra = Extra.find_by(itinerary_id: params[:itin_id])
  end

  private
  def itin_params
  	params.require(:itinerary).permit(:city, :state, :description, :user_id)
  end
end
