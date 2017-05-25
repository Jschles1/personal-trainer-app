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

ActiveRecord::Schema.define(version: 20170525014153) do

  create_table "appointments", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "client_id"
    t.integer  "gym_id"
    t.datetime "appointment_time"
    t.index ["client_id"], name: "index_appointments_on_client_id"
    t.index ["gym_id"], name: "index_appointments_on_gym_id"
    t.index ["user_id"], name: "index_appointments_on_user_id"
  end

  create_table "clients", force: :cascade do |t|
    t.string  "name"
    t.string  "email"
    t.string  "phone"
    t.integer "age"
    t.integer "weight"
    t.string  "goal"
    t.integer "weight_change"
    t.integer "user_id"
    t.index ["user_id"], name: "index_clients_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "uid",              limit: 8
    t.string   "provider"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
  end

end