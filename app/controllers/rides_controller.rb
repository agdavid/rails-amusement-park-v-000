class RidesController < ApplicationController
  def create
    @user = User.find_by(id: params[:ride][:user_id])
    @ride = Ride.new(ride_params)
    msg = @ride.take_ride
    redirect_to user_path(@user), :notice => msg
  end

  private
    def ride_params
      params.require(:ride).permit(:attraction_id, :user_id)
    end
end
