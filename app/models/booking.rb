class Booking < ApplicationRecord
  belongs_to :departing_flights, foreign_key: :departure_airport_id, class_name: "Flight"
  belongs_to :arriving_flights, foreign_key: :arrival_airport_id, class_name: "Flight"

  has_many :passengers
  accepts_nested_attributes_for :passengers

end
