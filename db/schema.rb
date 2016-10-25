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

ActiveRecord::Schema.define(version: 20161021174517) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ayudas", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "departamento_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["departamento_id"], name: "index_ayudas_on_departamento_id", using: :btree
  end

  create_table "departamentos", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "oficios", force: :cascade do |t|
    t.string   "institucion"
    t.date     "fecha_de_emision"
    t.text     "descripcion"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "personas", force: :cascade do |t|
    t.string   "nombres"
    t.string   "apellidos"
    t.integer  "cedula"
    t.integer  "tipo_de_cedula"
    t.date     "fecha_de_nacimiento"
    t.integer  "municipios"
    t.string   "direccion"
    t.string   "telefono"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "sexo"
  end

  create_table "solicituds", force: :cascade do |t|
    t.integer  "ayuda_id"
    t.integer  "persona_id"
    t.integer  "status"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.text     "observaciones"
    t.index ["ayuda_id"], name: "index_solicituds_on_ayuda_id", using: :btree
    t.index ["persona_id"], name: "index_solicituds_on_persona_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "ayudas", "departamentos"
  add_foreign_key "solicituds", "ayudas"
  add_foreign_key "solicituds", "personas"
end
