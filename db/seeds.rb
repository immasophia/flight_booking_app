

chennai = City.create(name: "Chennai")
ban = City.create(name: "Bengaluru")
mumbai = City.create(name: "Mumbai")
hydra = City.create(name: "Hyderabad")

Flight.create(flight_number: "6E 2766",
	          airline_name: "IndiGo",
	          arrival_time: Time.now + 2.days,
	          departure_time: Time.now + 2.days + 5.hours,
	          duration: "5 hours",
	          no_of_steps: 3,
	          price: 2345.00,
	          source_city_id: chennai.id,
	          destination_city_id: ban.id
	          )

Flight.create(flight_number: "I5 743",
	          airline_name: "Air India Express",
	          arrival_time: Time.now + 2.days,
	          departure_time: Time.now + 2.days + 2.hours,
	          duration: "2 hours",
	          no_of_steps: 1,
	          price: 12345.00,
	          source_city_id: chennai.id,
	          destination_city_id: ban.id
	          )

Flight.create(flight_number: "6E 2799",
	          airline_name: "IndiGo",
	          arrival_time: Time.now + 2.days,
	          departure_time: Time.now + 2.days + 7.hours,
	          duration: "7 hours",
	          no_of_steps: 3,
	          price: 5345.00,
	          source_city_id: ban.id,
	          destination_city_id: chennai.id
	          )

Flight.create(flight_number: "I5 767",
	          airline_name: "Air India Express",
	          arrival_time: Time.now + 2.days,
	          departure_time: Time.now + 2.days + 2.hours,
	          duration: "2 hours",
	          no_of_steps: 1,
	          price: 15345.00,
	          source_city_id: ban.id,
	          destination_city_id: chennai.id
	          )


