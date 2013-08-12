# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130812192903) do

  create_table "rates", :force => true do |t|
    t.string   "direction"
    t.string   "rate_type"
    t.string   "rate_desc"
    t.integer  "rate"
    t.string   "flight"
    t.integer  "trip_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "rates", ["trip_id"], :name => "index_rates_on_trip_id"

  create_table "trips", :force => true do |t|
    t.string   "operator"
    t.date     "departing"
    t.date     "returning"
    t.string   "origin"
    t.string   "destination"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
