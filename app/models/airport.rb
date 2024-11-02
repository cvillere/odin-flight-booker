class Airport < ApplicationRecord
  has_many_and_belongs_to_many :departing_flights, foreign_key: :departing_flight_id, class_name: "Flight"
  has_many_and_belongs_to_many :arriving_flights, foreign_key: :arriving_flight_id, class_name: "Flight"
end
