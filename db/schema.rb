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

ActiveRecord::Schema.define(version: 20190106013551) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "street"
    t.string "postal_code"
    t.string "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "local_tax"
  end

  create_table "companies_sponsorings", id: false, force: :cascade do |t|
    t.bigint "sponsoring_id", null: false
    t.bigint "company_id", null: false
    t.index ["sponsoring_id", "company_id"], name: "index_companies_sponsorings_on_sponsoring_id_and_company_id"
  end

  create_table "company_contacts", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "email"
    t.string "phone"
    t.integer "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hotels", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "postalcode"
    t.string "city"
    t.string "phone"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "speaker_travels", force: :cascade do |t|
    t.string "comes_from"
    t.string "goes_back_to"
    t.date "journey_start"
    t.date "went_back"
    t.integer "speaker_id"
    t.integer "hotel_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "speakers", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "email"
    t.string "twitter_handle"
    t.text "talk_title"
    t.text "abstract"
    t.string "talk_level"
    t.string "photo"
    t.text "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sponsorings", force: :cascade do |t|
    t.string "name"
    t.integer "net_price"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "todos", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.date "due_at"
    t.integer "company_id"
    t.boolean "archived", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
