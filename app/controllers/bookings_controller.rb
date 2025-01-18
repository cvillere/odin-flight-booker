class BookingsController < ApplicationController

  def new

    @flight_id = params[:flight_id]
    @flights = Flight.find(@flight_id)
    @num_passengers = params[:num_passengers].to_i
    @booking = Booking.new
    #@num_passengers.times { @booking.passengers.build } if @num_passengers > 0
    
  end

  def create

    #@flights = Flight.find(params[:flight_id])
    #@booking = Booking.new(booking_params)
    #byebug
    @num_passengers = params[:num_passengers].to_i
    #@booking = Booking.new
    @booking = @booking.passengers.build(booking_params)

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
