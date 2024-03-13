class CreateFlights < ActiveRecord::Migration[6.0]
  def change
    create_table :flights do |t|
      t.string :flight_number
      t.string :airline_name
      t.datetime :arrival_time
      t.datetime :departure_time
      t.string :duration
      t.integer :no_of_steps
      t.decimal :price, precision: 10, scale: 2
      t.references :source_city, foreign_key: { to_table: :cities }
      t.references :destination_city, foreign_key: { to_table: :cities }
      
      t.timestamps
    end
  end
end
