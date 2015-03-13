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

ActiveRecord::Schema.define(version: 20150312231106) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contacts", force: true do |t|
    t.string   "email"
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "contacts", ["email"], name: "index_contacts_on_email", unique: true, using: :btree

  create_table "contacts_workshops", id: false, force: true do |t|
    t.integer "workshop_id"
    t.integer "contact_id"
  end

  add_index "contacts_workshops", ["contact_id"], name: "index_contacts_workshops_on_contact_id", using: :btree
  add_index "contacts_workshops", ["workshop_id"], name: "index_contacts_workshops_on_workshop_id", using: :btree

  create_table "workshops", force: true do |t|
    t.string   "title"
    t.integer  "state",       default: 0
    t.date     "start_date"
    t.time     "start_time"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
