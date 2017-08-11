# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170811205003) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "courses", force: :cascade do |t|
    t.string   "name"
    t.string   "standard1"
    t.string   "standard2"
    t.string   "standard3"
    t.string   "standard4"
    t.string   "standard5"
    t.string   "standard6"
    t.string   "standard7"
    t.string   "standard8"
    t.string   "standard9"
    t.string   "standard10"
    t.string   "standard11"
    t.string   "standard12"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
