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

ActiveRecord::Schema.define(version: 20170516001243) do

  create_table "monster_templates", force: :cascade do |t|
    t.string "name"
    t.integer "lifespan"
    t.integer "lif"
    t.integer "pow"
    t.integer "int"
    t.integer "ski"
    t.integer "spd"
    t.integer "def"
    t.string "img"
  end

  create_table "monsters", force: :cascade do |t|
    t.integer "user_id"
    t.string "status", default: "active"
    t.string "name"
    t.integer "age", default: 0
    t.integer "remaining_life"
    t.integer "lifespan"
    t.integer "lif"
    t.integer "pow"
    t.integer "int"
    t.integer "ski"
    t.integer "spd"
    t.integer "def"
    t.string "img"
    t.integer "fatigue", default: 0
    t.integer "stress", default: 0
    t.integer "spoil", default: 0
    t.integer "fear", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.integer "game_time", default: 48000
    t.integer "money", default: 4000
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
