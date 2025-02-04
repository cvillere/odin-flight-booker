class BookingsController < ApplicationController

  def new

    @flight = Flight.find(params[:flight_id])
    @num_passengers = params[:num_passengers].to_i
    @booking = Booking.new(flight_id: @flight)
    @num_passengers.times { @booking.passengers.build }
    
  end

  def create

    @booking = Booking.new(booking_params)

    if @booking.save
      redirect_to booking_path(@booking)
    else
      puts @booking.errors.full_messages
      flash.now[:alert] = "There was an error selecting your flight."
      render partial: "passenger_form", status: :unprocessable_entity
    end

  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [:name, :email])
  end

end
