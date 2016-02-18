class ExtrasController < ApplicationController
  def new
  	@itinerary = Itinerary.find(params[:itin_id])
  	
  end

  def create
  	@extras = Extra.create(extras_params)
  	@itinerary = Itinerary.find(params[:itin_id])
  	redirect_to "/itineraries/show/#{@itinerary.id}"
  end

  private
  def extras_params
  	params.require(:extra).permit(:shopping, :drinking, :sleeping, :itinerary_id)
  end
end
