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

ActiveRecord::Schema.define(version: 20190911144557) do

  create_table "departamentos", force: :cascade do |t|
    t.string   "nombre",     default: " "
    t.integer  "user_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.index ["user_id"], name: "index_departamentos_on_user_id"
  end

  create_table "no_de_correos", force: :cascade do |t|
    t.integer  "No_de_Correo"
    t.string   "Departamento"
    t.text     "Proposito"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "no_de_oficios", force: :cascade do |t|
    t.integer  "Folio"
    t.string   "Departamento"
    t.text     "Proposito"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "registros", force: :cascade do |t|
    t.integer  "Folio"
    t.string   "Soporte"
    t.string   "No_Referencia"
    t.datetime "Fecha_Recepcion"
    t.date     "Fecha_documento"
    t.string   "Destinatario"
    t.string   "Remitente"
    t.text     "Asunto"
    t.string   "Se_Turno_A"
    t.integer  "Documento"
    t.integer  "Anexos"
    t.string   "Instruccion"
    t.date     "Fecha_Limite"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
    t.string   "email",                                          null: false
    t.string   "encrypted_password", limit: 128,                 null: false
    t.string   "confirmation_token", limit: 128
    t.string   "remember_token",     limit: 128,                 null: false
    t.boolean  "admin",                          default: false, null: false
    t.boolean  "oficialia",                      default: false, null: false
    t.index ["email"], name: "index_users_on_email"
    t.index ["remember_token"], name: "index_users_on_remember_token"
  end

end
