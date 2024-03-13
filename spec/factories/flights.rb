FactoryBot.define do
  factory :flight do
    association :source_city, factory: :city
    association :destination_city, factory: :city
    arrival_time { DateTime.now }
    departure_time { DateTime.now + 1.day }
  end
end