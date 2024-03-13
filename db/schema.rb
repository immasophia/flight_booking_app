# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2024_03_12_133557) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "flights", force: :cascade do |t|
    t.string "flight_number"
    t.string "airline_name"
    t.datetime "arrival_time"
    t.datetime "departure_time"
    t.string "duration"
    t.integer "no_of_steps"
    t.decimal "price", precision: 10, scale: 2
    t.bigint "source_city_id"
    t.bigint "destination_city_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["destination_city_id"], name: "index_flights_on_destination_city_id"
    t.index ["source_city_id"], name: "index_flights_on_source_city_id"
  end

  add_foreign_key "flights", "cities", column: "destination_city_id"
  add_foreign_key "flights", "cities", column: "source_city_id"
end
