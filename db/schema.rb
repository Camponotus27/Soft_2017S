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

ActiveRecord::Schema.define(version: 20171129212744) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assignments", force: :cascade do |t|
    t.bigint "profesion_id"
    t.bigint "servicio_id"
    t.date "assigned_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profesion_id"], name: "index_assignments_on_profesion_id"
    t.index ["servicio_id"], name: "index_assignments_on_servicio_id"
  end

  create_table "comunas", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "horario_dia", force: :cascade do |t|
    t.string "Hora1"
    t.string "Hora2"
    t.string "Hora3"
    t.string "Hora4"
    t.string "Hora5"
    t.string "Hora6"
    t.string "Hora7"
    t.string "Hora8"
    t.string "Hora9"
    t.string "Hora10"
    t.string "Hora11"
    t.string "Hora12"
    t.string "Hora13"
    t.string "Hora14"
    t.string "Hora15"
    t.string "Hora16"
    t.string "Hora17"
    t.string "Hora18"
    t.string "Hora19"
    t.string "Hora20"
    t.string "Hora21"
    t.string "Hora22"
    t.string "Hora23"
    t.string "Hora24"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "horario_mes", force: :cascade do |t|
    t.integer "horario"
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "horarios", force: :cascade do |t|
    t.string "comuna"
    t.date "fecha"
    t.time "hora"
    t.boolean "disponible"
    t.text "comentario"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profesions", force: :cascade do |t|
    t.string "nombre"
    t.string "descripcion"
    t.string "servicio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "registros", force: :cascade do |t|
    t.integer "codigo"
    t.datetime "fecha"
    t.string "profesional"
    t.string "cliente"
    t.string "comuna_atencion"
    t.string "servicio"
    t.string "horario_dia"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "servicios", force: :cascade do |t|
    t.string "nombre"
    t.integer "tarifa"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipo_horas", force: :cascade do |t|
    t.string "descripcion"
    t.string "dueno_hora"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "rut"
    t.string "nombre"
    t.string "permiso"
    t.integer "numero_contacto"
    t.integer "horario"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "comuna"
    t.string "profesion"
    t.string "horario_mes"
    t.string "apellido_materno"
    t.string "apellido_paterno"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "assignments", "profesions"
  add_foreign_key "assignments", "servicios"
end
