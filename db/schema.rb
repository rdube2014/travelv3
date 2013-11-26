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

ActiveRecord::Schema.define(version: 20131126182408) do

  create_table "photo_responses", force: true do |t|
    t.integer "photo_id"
    t.integer "reply_id"
  end

  create_table "photos", force: true do |t|
    t.integer "reply_id"
    t.string  "photo_url"
    t.string  "photo_caption"
  end

  create_table "replies", force: true do |t|
    t.integer "user_id"
    t.integer "request_id"
    t.text    "reply_text"
    t.integer "expert_star_rating"
    t.text    "expert_review"
    t.integer "traveler_star_rating"
  end

  create_table "requests", force: true do |t|
    t.integer "user_id"
    t.date    "created_date"
    t.date    "trip_start_date"
    t.date    "trip_end_date"
    t.string  "travel_to_city"
    t.string  "travel_to_state"
    t.string  "category"
    t.text    "request_text"
  end

  create_table "users", force: true do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "home_city"
    t.string "home_state"
    t.string "home_country"
    t.string "email"
    t.string "user_name"
    t.string "password"
    t.string "photo_url"
  end

end
