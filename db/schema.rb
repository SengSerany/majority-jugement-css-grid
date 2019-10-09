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

ActiveRecord::Schema.define(version: 2019_10_09_095313) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "candidats", force: :cascade do |t|
    t.string "name"
    t.string "mediumMark"
    t.integer "exellent", default: 0
    t.integer "veryGood", default: 0
    t.integer "good", default: 0
    t.integer "soSo", default: 0
    t.integer "notReally", default: 0
    t.integer "bad", default: 0
    t.integer "veryBad", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lists", force: :cascade do |t|
    t.string "voterName"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "marks", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vote_for_candidats", force: :cascade do |t|
    t.bigint "candidat_id"
    t.bigint "mark_id"
    t.bigint "list_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["candidat_id"], name: "index_vote_for_candidats_on_candidat_id"
    t.index ["list_id"], name: "index_vote_for_candidats_on_list_id"
    t.index ["mark_id"], name: "index_vote_for_candidats_on_mark_id"
  end

  add_foreign_key "vote_for_candidats", "candidats"
  add_foreign_key "vote_for_candidats", "lists"
  add_foreign_key "vote_for_candidats", "marks"
end
