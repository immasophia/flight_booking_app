
require 'rails_helper'

RSpec.describe Api::V1::FlightsController, type: :controller do
  describe 'GET #search' do
    let!(:flight) { create(:flight) }

    it 'returns JSON with flights matching the search criteria' do
      source_city_id = flight.source_city_id
      destination_city_id = flight.destination_city_id
      arrival_date = flight.arrival_time.to_date.to_s
      departure_date = flight.departure_time.to_date.to_s

      get :search, params: { 
        source_city_id: source_city_id,
        destination_city_id: destination_city_id,
        arrival_date: arrival_date,
        departure_date: departure_date
      }

      expect(response).to have_http_status(:ok)

      flights = JSON.parse(response.body)
      expect(flights).not_to be_empty
      expect(flights.first).to include('flight_number', 'airline_name')
    end
  end
end
