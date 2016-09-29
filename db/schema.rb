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

ActiveRecord::Schema.define(version: 20160929032654) do

  create_table "clients", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "dni",        limit: 4
    t.string   "mail",       limit: 255
    t.date     "birth"
    t.integer  "phone",      limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "genres", force: :cascade do |t|
    t.string   "des_genre",  limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "products", force: :cascade do |t|
    t.integer  "cod_product", limit: 4
    t.string   "nom_product", limit: 255
    t.string   "estado",      limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.integer  "cod_room",   limit: 4
    t.string   "nom_room",   limit: 255
    t.string   "estado",     limit: 255
    t.string   "capacidad",  limit: 255
    t.integer  "shop_id",    limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "rooms", ["shop_id"], name: "index_rooms_on_shop_id", using: :btree

  create_table "shops", force: :cascade do |t|
    t.string   "code",        limit: 255
    t.string   "name",        limit: 255
    t.string   "address",     limit: 255
    t.string   "telephone",   limit: 255
    t.string   "email",       limit: 255
    t.string   "description", limit: 255
    t.string   "admin",       limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "singers", force: :cascade do |t|
    t.string   "nom_singer", limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "songs", force: :cascade do |t|
    t.string   "nom_song",   limit: 255
    t.decimal  "duracion",               precision: 10
    t.integer  "anio_song",  limit: 4
    t.integer  "singer_id",  limit: 4
    t.integer  "genre_id",   limit: 4
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  add_index "songs", ["genre_id"], name: "index_songs_on_genre_id", using: :btree
  add_index "songs", ["singer_id"], name: "index_songs_on_singer_id", using: :btree

  add_foreign_key "rooms", "shops"
  add_foreign_key "songs", "genres"
  add_foreign_key "songs", "singers"
end
