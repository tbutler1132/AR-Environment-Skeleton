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

ActiveRecord::Schema.define(version: 2020_08_14_153936) do

  create_table "buses", force: :cascade do |t|
    t.integer "route_number"
  end

  create_table "grade_levels", force: :cascade do |t|
    t.string "grade_level"
  end

  create_table "students", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "grade_level_id"
    t.integer "route_number_id"
    t.integer "bus_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "last_name"
    t.integer "years_of_experience"
    t.integer "grade_level_id"
  end

end
