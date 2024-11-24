class FlightsController < ApplicationController

  before_action :flight_options, only: [:index]

  def flight_options
    @flight_options = Flight.all.map { |u| [u.start.strftime("%m/%d/%Y"), u.start] } 
  end

  def index
    if params[:departure_airport_id].present? && params[:arrival_airport_id].present? && params[:start].present?
      formatted_start = DateTime.parse(params[:start])
      @flights = Flight.results(params[:departure_airport_id], params[:arrival_airport_id], formatted_start).all
    # @departure_airport = params[:departure_airport_id]
    # @arrival_airport = params[:arrival_airport_id]
    # @start = params[:start]
    @num_passengers = params[:num_passengers].to_i
    else
      print "No flights"
      @flights = []
    end

  end


  private


  def flight_params
    params.require(:flight).permit(:departure_airport, :arrival_airport, :start, :flight_duration)
  end

end
