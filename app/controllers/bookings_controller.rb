class BookingsController < ApplicationController

  def new
    @num_passengers = params[:num_passengers].to_i
    @flight_id = params[:flight_id]
    @booking = Booking.new
    
  end

  def create

    @booking = Booking.new(booking_params)

    if @booking.save
      redirect_to flights_path, notice: "Booking successful"
    else
      flash.now[:alert] = "There was an error creating your booking."
      render status: :unprocessable_entity
    end

  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id)
  end

end
