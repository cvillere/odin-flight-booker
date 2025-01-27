class Airport < ApplicationRecord
  has_many :departing_flights, foreign_key: "departure_airport_id", class_name: "Flight"
  has_many :arriving_flights, foreign_key: "arrival_airport_id", class_name: "Flight"
  accepts_nested_attributes_for :departing_flights
  accepts_nested_attributes_for :arriving_flights

end


