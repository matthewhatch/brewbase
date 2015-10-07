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

ActiveRecord::Schema.define(version: 20150914234536) do

  create_table "brewers", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "grains", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "grains_recipes", id: false, force: :cascade do |t|
    t.integer "recipes_id"
    t.integer "grains_id"
  end

  add_index "grains_recipes", ["grains_id"], name: "index_grains_recipes_on_grains_id"
  add_index "grains_recipes", ["recipes_id"], name: "index_grains_recipes_on_recipes_id"

  create_table "hops", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "recipes", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "recipes_grains", id: false, force: :cascade do |t|
    t.integer "recipes_id"
    t.integer "grains_id"
  end

  add_index "recipes_grains", ["grains_id"], name: "index_recipes_grains_on_grains_id"
  add_index "recipes_grains", ["recipes_id"], name: "index_recipes_grains_on_recipes_id"

  create_table "yeasts", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
