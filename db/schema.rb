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

<<<<<<< d02abb19a36d235532ee6ae9be242b4e05ec60a5
ActiveRecord::Schema.define(version: 2018_08_01_093707) do

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "email"
    t.string "avatar"
    t.boolean "admin", default: false
    t.string "password_digest"
=======
ActiveRecord::Schema.define(version: 2018_08_01_080615) do

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.boolean "admin", default: false
    t.string "avatar"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
>>>>>>> Added correct_user and logged_in_user methods
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
