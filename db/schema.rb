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

ActiveRecord::Schema.define(:version => 20130213191657) do

  create_table "athletes", :force => true do |t|
    t.string   "fname"
    t.string   "lname"
    t.string   "email"
    t.integer  "age"
    t.string   "pic_url"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "events", :force => true do |t|
    t.string   "name"
    t.string   "location"
    t.date     "date"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "exercises", :force => true do |t|
    t.string   "name"
    t.integer  "target_distance"
    t.integer  "actual_distance"
    t.integer  "week"
    t.integer  "myevent_id"
    t.integer  "athlete_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "myevents", :force => true do |t|
    t.integer  "athlete_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
