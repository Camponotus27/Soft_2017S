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

ActiveRecord::Schema.define(version: 20171210024624) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assignments", force: :cascade do |t|
    t.bigint "profesion_id"
    t.bigint "servicio_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profesion_id"], name: "index_assignments_on_profesion_id"
    t.index ["servicio_id"], name: "index_assignments_on_servicio_id"
  end

  create_table "comunas", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "users_id"
    t.index ["users_id"], name: "index_comunas_on_users_id"
  end

  create_table "dia_horario_semanas", force: :cascade do |t|
    t.date "fecha_dia"
    t.integer "hora8"
    t.integer "hora9"
    t.integer "hora10"
    t.integer "hora11"
    t.integer "hora12"
    t.integer "hora13"
    t.integer "hora14"
    t.integer "hora15"
    t.integer "hora16"
    t.integer "hora17"
    t.integer "hora18"
    t.integer "hora19"
    t.integer "hora20"
    t.integer "hora21"
    t.integer "hora22"
    t.integer "hora23"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "diahorarios", force: :cascade do |t|
    t.bigint "horario_semana_id"
    t.bigint "dia_horario_semana_id"
    t.string "dia"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dia_horario_semana_id"], name: "index_diahorarios_on_dia_horario_semana_id"
    t.index ["horario_semana_id"], name: "index_diahorarios_on_horario_semana_id"
  end

  create_table "horario_semanas", force: :cascade do |t|
    t.date "fecha_ini"
    t.date "fecha_ter"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "users_id"
    t.index ["users_id"], name: "index_horario_semanas_on_users_id"
  end

  create_table "horarios", force: :cascade do |t|
    t.string "profesional"
    t.string "zona"
    t.datetime "fecha"
    t.boolean "disponibilidad"
    t.string "cliente"
    t.string "apellido"
    t.string "direccion_de_atencion"
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profesions", force: :cascade do |t|
    t.string "nombre"
    t.string "descripcion"
    t.string "servicio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "users_id"
    t.index ["users_id"], name: "index_profesions_on_users_id"
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

  create_table "usercomunas", force: :cascade do |t|
    t.bigint "comuna_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["comuna_id"], name: "index_usercomunas_on_comuna_id"
    t.index ["user_id"], name: "index_usercomunas_on_user_id"
  end

  create_table "userprofesions", force: :cascade do |t|
    t.bigint "profesion_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profesion_id"], name: "index_userprofesions_on_profesion_id"
    t.index ["user_id"], name: "index_userprofesions_on_user_id"
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
  add_foreign_key "comunas", "users", column: "users_id"
  add_foreign_key "diahorarios", "dia_horario_semanas"
  add_foreign_key "diahorarios", "horario_semanas"
  add_foreign_key "horario_semanas", "users", column: "users_id"
  add_foreign_key "profesions", "users", column: "users_id"
  add_foreign_key "usercomunas", "comunas"
  add_foreign_key "usercomunas", "users"
  add_foreign_key "userprofesions", "profesions"
  add_foreign_key "userprofesions", "users"
end
