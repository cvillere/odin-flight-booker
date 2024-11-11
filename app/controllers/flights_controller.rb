class FlightsController < ApplicationController

  before_action :flight_options, only: [:index]

  def index
    @flights = Flight.all
  end


  private

  def flight_options
    @flight_options = Flight.all.map { |u| [u.start.strftime("%m/%d/%Y"), u.id] } 
  end

  def flight_params
    params.require(:flight).permit(:departure_airport, :arrival_airport, :start, :flight_duration)
  end

end
