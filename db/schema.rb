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

ActiveRecord::Schema.define(version: 20140101151918) do

  create_table "games", force: true do |t|
    t.string   "player"
    t.boolean  "alive",         default: true
    t.boolean  "werewolf",      default: false
    t.integer  "votes_against"
    t.boolean  "voted",         default: false
    t.integer  "village_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  add_index "games", ["user_id"], name: "index_games_on_user_id"
  add_index "games", ["village_id"], name: "index_games_on_village_id"

  create_table "games_users", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",           default: false
    t.integer  "game_id"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["game_id"], name: "index_users_on_game_id"
  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

  create_table "villages", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
