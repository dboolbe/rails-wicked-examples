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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150115200051) do

  create_table "my_models", force: true do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "suffix"
    t.string   "twitter_username"
    t.string   "github_username"
    t.string   "website"
    t.string   "city"
    t.string   "state"
    t.integer  "zipcode"
    t.string   "street"
    t.integer  "car_year"
    t.string   "car_maker"
    t.string   "car_model"
    t.string   "car_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
