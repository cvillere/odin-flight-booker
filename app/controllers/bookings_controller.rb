class BookingsController < ApplicationController

  def new

    @flight_id = params[:flight_id]
    @num_passengers = params[:num_passengers].to_i
    @booking = Booking.new()

    
  end

  def create

    @num_passengers.times { @booking.passengers.build(booking_params) } if @num_passengers > 0

    if @booking.save
      redirect_to flights_path, notice: "Successfully selected flight"
    else
      flash.now[:alert] = "There was an error selecting your flight."
      render status: :unprocessable_entity
    end


  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [:name, :email])
  end

end
