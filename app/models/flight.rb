class Flight < ApplicationRecord
  belongs_to :arrival_airport, foreign_key: :arrival_airport_id, class_name: "Airport"
  belongs_to :departure_airport, foreign_key: :departure_airport_id, class_name: "Airport"

  def self.start_formatted
    all.map { |flight| [flight.start.strftime("%m/%d/%Y"), flight.id] }
  end

end