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

ActiveRecord::Schema.define(version: 2019_12_06_120414) do

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.integer "id_speciality"
    t.index ["id_speciality"], name: "index_employees_on_id_speciality"
  end

  create_table "fightemployees", force: :cascade do |t|
    t.integer "id_employee"
    t.integer "id_fight"
    t.string "customization"
    t.index ["id_employee"], name: "index_fightemployees_on_id_employee"
    t.index ["id_fight"], name: "index_fightemployees_on_id_fight"
  end

  create_table "fights", force: :cascade do |t|
    t.datetime "date"
    t.integer "pastry1"
    t.integer "pastry2"
    t.boolean "choiceDone", default: false
    t.index ["pastry1"], name: "index_fights_on_pastry1"
    t.index ["pastry2"], name: "index_fights_on_pastry2"
  end

  create_table "pastries", force: :cascade do |t|
    t.string "name"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password"
  end

end
