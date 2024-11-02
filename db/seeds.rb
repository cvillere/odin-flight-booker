# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Airport.create(airport_code: "SFO")
Airport.create(airport_code: "MSY")
Airport.create(airport_code: "SMF")
Airport.create(airport_code: "DEN")
Airport.create(airport_code: "JEF")
Airport.create(airport_code: "HOU")
Airport.create(airport_code: "LUV")
Airport.create(airport_code: "DAL")
Airport.create(airport_code: "NJC")
Airport.create(airport_code: "FLA")

Flight.create(departure_airport_id: 1, arrival_airport_id: 4, start: "2025-04-11 12:00:00", flight_duration: "4:02:00")
Flight.create(departure_airport_id: 2, arrival_airport_id: 7, start: "2025-09-23 12:00:00", flight_duration: "2:10:00")
Flight.create(departure_airport_id: 3, arrival_airport_id: 8, start: "2025-02-19 12:00:00", flight_duration: "00:55:00")
Flight.create(departure_airport_id: 4, arrival_airport_id: 2, start: "2025-11-17 12:00:00", flight_duration: "1:01:00")
Flight.create(departure_airport_id: 5, arrival_airport_id: 1, start: "2025-10-15 12:00:00", flight_duration: "2:05:00")
Flight.create(departure_airport_id: 6, arrival_airport_id: 9, start: "2025-04-13 12:00:00", flight_duration: "3:07:00")
Flight.create(departure_airport_id: 7, arrival_airport_id: 10, start: "2025-05-12 12:00:00", flight_duration: "14:12:00")
Flight.create(departure_airport_id: 8, arrival_airport_id: 6, start: "2025-06-13 12:00:00", flight_duration: "04:03:00")
Flight.create(departure_airport_id: 9, arrival_airport_id: 3, start: "2025-09-14 12:00:00", flight_duration: "05:03:00")
Flight.create(departure_airport_id: 10, arrival_airport_id: 9, start: "2025-01-15 12:00:00", flight_duration: "01:04:00")
Flight.create(departure_airport_id: 1, arrival_airport_id: 2, start: "2025-02-18 12:00:00", flight_duration: "02:06:00")
Flight.create(departure_airport_id: 2, arrival_airport_id: 4, start: "2025-03-09 12:00:00", flight_duration: "03:07:00")
Flight.create(departure_airport_id: 3, arrival_airport_id: 2, start: "2025-04-12 12:00:00", flight_duration: "04:08:00")
Flight.create(departure_airport_id: 4, arrival_airport_id: 1, start: "2025-11-11 12:00:00", flight_duration: "05:02:00")
Flight.create(departure_airport_id: 5, arrival_airport_id: 8, start: "2025-08-19 12:00:00", flight_duration: "02:05:00")
Flight.create(departure_airport_id: 6, arrival_airport_id: 9, start: "2025-09-17 12:00:00", flight_duration: "5:13:00")
Flight.create(departure_airport_id: 7, arrival_airport_id: 3, start: "2025-10-13 12:00:00", flight_duration: "4:37:00")
Flight.create(departure_airport_id: 8, arrival_airport_id: 2, start: "2025-11-23 12:00:00", flight_duration: "6:39:00")
Flight.create(departure_airport_id: 9, arrival_airport_id: 7, start: "2025-02-09 12:00:00", flight_duration: "1:13:00")
Flight.create(departure_airport_id: 10, arrival_airport_id: 5, start: "2025-03-14 12:00:00", flight_duration: "2:19:00")