class Passenger < ApplicationRecord

  #belongs_to :departing_flights, foreign_key: :departure_airport_id, class_name: "Flight"
  #belongs_to :arriving_flights, foreign_key: :arrival_airport_id, class_name: "Flight"
  belongs_to :booking, foreign_key: :booking_id


end
