class FlightsController < ApplicationController

  before_action :flight_options, only: [:index]

  def flight_options
    @flight_options = Flight.all.map { |u| [u.start.strftime("%m/%d/%Y"), u.start] }
  end

  def index
    @flights = Flight.all
    @airports = Airport.all
    @num_passengers = params[:num_passengers].to_i
    date = Date.parse(params[:start])
    time_range = date.beginning_of_day..date.end_of_day
    @flights = Flight.results(params[:departure_airport_id], params[:arrival_airport_id], time_range).all
  end

  private

  def flight_params
    params.require(:flight).permit(:departure_airport, :arrival_airport, :start, :flight_duration)
  end

end
