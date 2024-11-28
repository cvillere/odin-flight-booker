class FlightsController < ApplicationController

  before_action :flight_options, only: [:index]

  def flight_options
    @flight_options = Flight.all.map { |u| [u.start.strftime("%m/%d/%Y"), u.start] } 
  end

  def index
    #formatted_start = DateTime.parse(params[:start])
    @num_passengers = params[:num_passengers].to_i
    @flights = Flight.results(params[:departure_airport_id], params[:arrival_airport_id], params[:start]).all
    # @departure_airport = params[:departure_airport_id]
    # @arrival_airport = params[:arrival_airport_id]
    # @start = params[:start]
    @num_passengers = params[:num_passengers].to_i
    #puts @flights.formatted_start

  end

  private

  def flight_params
    params.require(:flight).permit(:departure_airport, :arrival_airport, :start, :flight_duration)
  end

end
