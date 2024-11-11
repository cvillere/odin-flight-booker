class FlightsController < ApplicationController

  def index
    @flights = Flight.all
  end


  private

  def flight_params
    params.require(:flight).permit(:departure_airport, :arrival_airport, :start, :flight_duration)
  end

end
