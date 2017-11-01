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

ActiveRecord::Schema.define(version: 20171018175657) do

  create_table "cards", force: :cascade do |t|
    t.string   "multiverse_id"
    t.string   "layout"
    t.string   "mana_cost"
    t.string   "cmc"
    t.string   "colors"
    t.string   "special_type"
    t.string   "supertypes"
    t.string   "subtypes"
    t.string   "rarity"
    t.string   "text"
    t.string   "flavor"
    t.string   "artist"
    t.string   "number"
    t.string   "power"
    t.string   "toughness"
    t.string   "loyalty"
    t.string   "variations"
    t.string   "watermark"
    t.string   "border"
    t.string   "timeshifted"
    t.string   "hand"
    t.string   "life"
    t.string   "reserved"
    t.string   "release_date"
    t.string   "starter"
    t.string   "rulings"
    t.string   "foreign_names"
    t.string   "printings"
    t.string   "original_text"
    t.string   "original_type"
    t.string   "legalities"
    t.string   "source"
    t.string   "image_url"
    t.string   "set"
    t.string   "set_name"
    t.string   "alternate_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "name"
  end

  create_table "cards_decks", force: :cascade do |t|
    t.integer  "card_id"
    t.integer  "deck_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["card_id"], name: "index_cards_decks_on_card_id"
    t.index ["deck_id"], name: "index_cards_decks_on_deck_id"
  end

  create_table "decks", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
