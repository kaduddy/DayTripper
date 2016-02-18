class UsersController < ApplicationController
  def create
  	@user = User.create(user_params)
  	redirect_to "/itineraries/#{@user.id}"
  end

  def show
    @user = User.find(params[:id])
    @itins = Itinerary.where(user_id: params[:id])
  end

  private
  def user_params
  	params.require(:user).permit(:f_name, :l_name, :email, :password, :password_confirmation)
  end
end
