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

ActiveRecord::Schema.define(version: 20161011041150) do

  create_table "categories", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string   "name",                   limit: 255
    t.integer  "dni",                    limit: 4
    t.date     "birth"
    t.integer  "phone",                  limit: 4
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
  end

  add_index "clients", ["email"], name: "index_clients_on_email", unique: true, using: :btree
  add_index "clients", ["reset_password_token"], name: "index_clients_on_reset_password_token", unique: true, using: :btree

  create_table "comments", force: :cascade do |t|
    t.integer  "client_id",      limit: 4
    t.string   "comment",        limit: 255
    t.integer  "rating",         limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "reservation_id", limit: 4
  end

  add_index "comments", ["client_id"], name: "index_comments_on_client_id", using: :btree
  add_index "comments", ["reservation_id"], name: "index_comments_on_reservation_id", using: :btree

  create_table "employee_roles", force: :cascade do |t|
    t.string   "nom_rol",    limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string   "nom_emp",                limit: 255
    t.integer  "dni",                    limit: 4
    t.integer  "phone",                  limit: 4
    t.integer  "employee_role_id",       limit: 4
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
  end

  add_index "employees", ["email"], name: "index_employees_on_email", unique: true, using: :btree
  add_index "employees", ["employee_role_id"], name: "index_employees_on_employee_role_id", using: :btree
  add_index "employees", ["reset_password_token"], name: "index_employees_on_reset_password_token", unique: true, using: :btree

  create_table "events", force: :cascade do |t|
    t.string   "nom_evento", limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "genres", force: :cascade do |t|
    t.string   "des_genre",  limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "reservation_id", limit: 4
    t.integer  "product_id",     limit: 4
    t.integer  "cantidad",       limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "orders", ["product_id"], name: "index_orders_on_product_id", using: :btree
  add_index "orders", ["reservation_id"], name: "index_orders_on_reservation_id", using: :btree

  create_table "playlists", force: :cascade do |t|
    t.integer  "play_order",     limit: 4
    t.integer  "reservation_id", limit: 4
    t.integer  "song_id",        limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "playlists", ["reservation_id"], name: "index_playlists_on_reservation_id", using: :btree
  add_index "playlists", ["song_id"], name: "index_playlists_on_song_id", using: :btree

  create_table "products", force: :cascade do |t|
    t.integer  "cod_product", limit: 4
    t.string   "nom_product", limit: 255
    t.string   "estado",      limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.integer  "category_id", limit: 4
    t.integer  "shop_id",     limit: 4
    t.decimal  "price",                   precision: 5, scale: 2
  end

  add_index "products", ["category_id"], name: "index_products_on_category_id", using: :btree
  add_index "products", ["shop_id"], name: "index_products_on_shop_id", using: :btree

  create_table "reservations", force: :cascade do |t|
    t.date     "fec_reserva"
    t.integer  "can_persona", limit: 4
    t.string   "comentario",  limit: 255
    t.integer  "event_id",    limit: 4
    t.integer  "client_id",   limit: 4
    t.integer  "room_id",     limit: 4
    t.integer  "shop_id",     limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "reservations", ["client_id"], name: "index_reservations_on_client_id", using: :btree
  add_index "reservations", ["event_id"], name: "index_reservations_on_event_id", using: :btree
  add_index "reservations", ["room_id"], name: "index_reservations_on_room_id", using: :btree
  add_index "reservations", ["shop_id"], name: "index_reservations_on_shop_id", using: :btree

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
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "employee_id", limit: 4
  end

  add_index "shops", ["employee_id"], name: "index_shops_on_employee_id", using: :btree

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

  add_foreign_key "comments", "clients"
  add_foreign_key "comments", "reservations"
  add_foreign_key "employees", "employee_roles"
  add_foreign_key "orders", "products"
  add_foreign_key "orders", "reservations"
  add_foreign_key "playlists", "reservations"
  add_foreign_key "playlists", "songs"
  add_foreign_key "products", "categories"
  add_foreign_key "products", "shops"
  add_foreign_key "reservations", "clients"
  add_foreign_key "reservations", "events"
  add_foreign_key "reservations", "rooms"
  add_foreign_key "reservations", "shops"
  add_foreign_key "rooms", "shops"
  add_foreign_key "shops", "employees"
  add_foreign_key "songs", "genres"
  add_foreign_key "songs", "singers"
end
