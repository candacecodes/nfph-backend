# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_10_29_230539) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.string "text"
    t.string "owner_uuid"
    t.string "date"
    t.bigint "entry_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["entry_id"], name: "index_comments_on_entry_id"
  end

  create_table "entries", force: :cascade do |t|
    t.string "issue"
    t.string "location"
    t.string "image"
    t.integer "pain_level"
    t.string "symptoms"
    t.string "symptom_onset"
    t.string "date_of_entry"
    t.bigint "patient_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["patient_id"], name: "index_entries_on_patient_id"
  end

  create_table "organizations", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string "first_name"
    t.string "patient_uuid"
    t.string "diagnosis"
    t.string "prescriptions", default: [], array: true
    t.bigint "organization_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email_address"
    t.string "password_digest"
    t.string "last_name"
    t.index ["organization_id"], name: "index_patients_on_organization_id"
  end

  create_table "providers", force: :cascade do |t|
    t.string "first_name"
    t.string "title"
    t.string "field"
    t.string "provider_uuid"
    t.bigint "organization_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email_address"
    t.string "password_digest"
    t.integer "NPI_number"
    t.string "last_name"
    t.index ["organization_id"], name: "index_providers_on_organization_id"
  end

  add_foreign_key "comments", "entries"
  add_foreign_key "entries", "patients"
  add_foreign_key "patients", "organizations"
  add_foreign_key "providers", "organizations"
end
