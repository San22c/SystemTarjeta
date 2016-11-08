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

ActiveRecord::Schema.define(version: 20161108201005) do

  create_table "clientes", force: :cascade do |t|
    t.string   "nombre",     limit: 255
    t.string   "apellidos",  limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "telefono",   limit: 255
    t.string   "email",      limit: 255
    t.date     "fecha_baja"
  end

  create_table "premios", force: :cascade do |t|
    t.string   "concepto",   limit: 255
    t.integer  "stock",      limit: 4
    t.integer  "puntos",     limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.date     "fecha_baja"
  end

  create_table "tabmaestras", force: :cascade do |t|
    t.string   "clave",       limit: 255
    t.string   "valor",       limit: 255
    t.string   "descripcion", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "tarjeta", force: :cascade do |t|
    t.string   "numref",     limit: 255
    t.integer  "puntos",     limit: 4
    t.integer  "usuario_id", limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "tarjeta", ["usuario_id"], name: "index_tarjeta_on_usuario_id", using: :btree

  create_table "tiendas", force: :cascade do |t|
    t.string   "nombre",      limit: 255
    t.string   "descripcion", limit: 255
    t.string   "url",         limit: 255
    t.date     "fecha_baja"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "nombre",                 limit: 255
    t.string   "apellidos",              limit: 255
    t.string   "telefono",               limit: 255
    t.string   "direccion",              limit: 255
    t.string   "rol",                    limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "usuarios", force: :cascade do |t|
    t.string   "nombre",     limit: 255
    t.string   "apellidos",  limit: 255
    t.string   "email",      limit: 255
    t.string   "telefono",   limit: 255
    t.string   "direccion",  limit: 255
    t.string   "password",   limit: 255
    t.string   "rol",        limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.date     "fecha_baja"
  end

  add_foreign_key "tarjeta", "usuarios"
end
