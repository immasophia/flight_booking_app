class Api::V1::FlightsController < ApplicationController

	def search
	  arrival_date = parse_date_param(params[:arrival_date])
	  departure_date = parse_date_param(params[:departure_date])

	  flights = Flight.where(source_city_id: params[:source_city_id],
	                         destination_city_id: params[:destination_city_id])
	  flights = flights.where(arrival_time: arrival_date.beginning_of_day..arrival_date.end_of_day) if arrival_date
	  flights = flights.where(departure_time: departure_date.beginning_of_day..departure_date.end_of_day) if departure_date

	  flights = flights.paginate(page: 1, per_page: 10)

	  render json: flights, meta: { total_pages: flights.total_pages }
	end

	private

	def parse_date_param(date_param)
	  return nil if date_param.blank? || date_param == "null"
	  DateTime.parse(date_param)
	end

end
