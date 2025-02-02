# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2024_05_19_153739) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "client_form_responses", force: :cascade do |t|
    t.bigint "client_form_id", null: false
    t.bigint "form_field_id", null: false
    t.text "response"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_form_id"], name: "index_client_form_responses_on_client_form_id"
    t.index ["form_field_id"], name: "index_client_form_responses_on_form_field_id"
  end

  create_table "client_forms", force: :cascade do |t|
    t.bigint "client_id", null: false
    t.bigint "form_template_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_client_forms_on_client_id"
    t.index ["form_template_id"], name: "index_client_forms_on_form_template_id"
  end

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.date "dob"
    t.string "diagnosis"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "form_fields", force: :cascade do |t|
    t.bigint "form_template_id", null: false
    t.string "label"
    t.string "field_type"
    t.boolean "required"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["form_template_id"], name: "index_form_fields_on_form_template_id"
  end

  create_table "form_templates", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "client_form_responses", "client_forms"
  add_foreign_key "client_form_responses", "form_fields"
  add_foreign_key "client_forms", "clients"
  add_foreign_key "client_forms", "form_templates"
  add_foreign_key "form_fields", "form_templates"
end
