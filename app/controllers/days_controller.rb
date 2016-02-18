class DaysController < ApplicationController
  def new
  	# @user = User.find(params[:user_id])
  	@itinerary = Itinerary.find(params[:itin_id])
  end

  def create
  	@day = Day.create(days_params)
  	@itinerary = Itinerary.find(params[:itin_id])
  	redirect_to "/extras/new/#{@itinerary.id}"
  end

  private
  def days_params
  	params.require(:day).permit(:breakfast, :lunch, :dinner, :am, :pm, :itinerary_id)
  end
end
