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

ActiveRecord::Schema.define(version: 20160916060021) do

  create_table "clients", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "dni",        limit: 4
    t.string   "mail",       limit: 255
    t.date     "birth"
    t.integer  "phone",      limit: 4
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

  create_table "songs", force: :cascade do |t|
    t.integer  "cod_song",     limit: 4
    t.string   "nom_song",     limit: 255
    t.string   "artista_song", limit: 255
    t.string   "genero_song",  limit: 255
    t.datetime "anio_song"
    t.string   "estado",       limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

end
