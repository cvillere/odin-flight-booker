class BookingsController < ApplicationController

  def new

    @booking = Booking.new

    params[:num_passengers].to_i.times do
      @booking.passengers.build
    end

  end



end
