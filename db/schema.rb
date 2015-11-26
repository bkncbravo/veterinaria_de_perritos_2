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

ActiveRecord::Schema.define(version: 20151103042245) do

  create_table "animals", force: :cascade do |t|
    t.string   "nombre"
    t.string   "raza"
    t.string   "color"
    t.string   "tamano"
    t.integer  "cliente_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.date     "fechanacimiento"
  end

  add_index "animals", ["cliente_id"], name: "index_animals_on_cliente_id"

  create_table "clientes", force: :cascade do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "direccion"
    t.string   "correo"
    t.string   "celular"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "historials", force: :cascade do |t|
    t.integer  "animal_id"
    t.integer  "servicio_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "historials", ["animal_id"], name: "index_historials_on_animal_id"
  add_index "historials", ["servicio_id"], name: "index_historials_on_servicio_id"

  create_table "servicios", force: :cascade do |t|
    t.string   "tiposervisio"
    t.integer  "tarifa"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "usuarios", ["email"], name: "index_usuarios_on_email", unique: true
  add_index "usuarios", ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true

end
