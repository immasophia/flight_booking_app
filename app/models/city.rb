class City < ApplicationRecord
	has_many :source_flights, class_name: 'Flight', foreign_key: 'source_city_id'
  has_many :destination_flights, class_name: 'Flight', foreign_key: 'destination_city_id'
end
