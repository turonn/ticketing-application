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

ActiveRecord::Schema.define(version: 2020_12_02_012906) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "games", force: :cascade do |t|
    t.string "sport"
    t.string "gender"
    t.string "level"
    t.string "home_team"
    t.string "visiting_team"
    t.integer "max_capacity"
    t.datetime "event_date"
    t.integer "price"
  end

  create_table "tickets", force: :cascade do |t|
    t.bigint "game_id"
    t.bigint "user_id"
    t.boolean "used"
    t.string "ticket_code"
    t.index ["game_id"], name: "index_tickets_on_game_id"
    t.index ["user_id"], name: "index_tickets_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "cellphone"
    t.string "password"
  end

end
