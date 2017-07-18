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

ActiveRecord::Schema.define(version: 20170718191725) do

  create_table "device_brands", force: :cascade do |t|
    t.string "name", limit: 50, null: false
    t.integer "submitter_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_device_brands_on_name", unique: true
    t.index ["submitter_id"], name: "index_device_brands_on_submitter_id"
  end

  create_table "device_models", force: :cascade do |t|
    t.string "name", limit: 50, null: false
    t.boolean "has_smart_integration", default: false, null: false
    t.integer "submitter_id", null: false
    t.integer "device_brand_id", null: false
    t.integer "device_type_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["device_brand_id"], name: "index_device_models_on_device_brand_id"
    t.index ["device_type_id"], name: "index_device_models_on_device_type_id"
    t.index ["name", "device_brand_id"], name: "index_device_models_on_name_and_device_brand_id", unique: true
    t.index ["submitter_id"], name: "index_device_models_on_submitter_id"
  end

  create_table "device_models_remotes", id: false, force: :cascade do |t|
    t.integer "device_model_id", null: false
    t.integer "remote_id", null: false
    t.index ["device_model_id", "remote_id"], name: "index_device_models_remotes_on_device_model_id_and_remote_id"
    t.index ["remote_id", "device_model_id"], name: "index_device_models_remotes_on_remote_id_and_device_model_id"
  end

  create_table "device_types", force: :cascade do |t|
    t.string "name", limit: 50, null: false
    t.integer "submitter_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_device_types_on_name", unique: true
    t.index ["submitter_id"], name: "index_device_types_on_submitter_id"
  end

  create_table "devices", force: :cascade do |t|
    t.string "name"
    t.integer "location_id", null: false
    t.integer "device_model_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["device_model_id"], name: "index_devices_on_device_model_id"
    t.index ["location_id"], name: "index_devices_on_location_id"
    t.index ["name", "location_id"], name: "index_devices_on_name_and_location_id", unique: true
  end

  create_table "keys", force: :cascade do |t|
    t.string "name", limit: 50, null: false
    t.string "value", limit: 50, null: false
    t.integer "remote_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name", "value"], name: "index_keys_on_name_and_value", unique: true
    t.index ["remote_id"], name: "index_keys_on_remote_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "name", limit: 50, null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name", "user_id"], name: "index_locations_on_name_and_user_id", unique: true
    t.index ["user_id"], name: "index_locations_on_user_id"
  end

  create_table "remotes", force: :cascade do |t|
    t.string "name", limit: 50, null: false
    t.integer "submitter_id", null: false
    t.integer "brand_id", null: false
    t.string "model", limit: 50, null: false
    t.string "supported_devices", limit: 50
    t.integer "bits"
    t.string "flags"
    t.string "include"
    t.boolean "manual_sort"
    t.integer "suppress_repeat"
    t.string "driver"
    t.integer "eps", limit: 1
    t.integer "aeps", limit: 1
    t.string "header"
    t.string "zero"
    t.string "one"
    t.string "two"
    t.string "three"
    t.integer "ptrail"
    t.integer "plead"
    t.string "foot"
    t.string "repeat"
    t.integer "pre_data_bits"
    t.string "pre_data"
    t.integer "post_data_bits"
    t.string "post_data"
    t.string "pre"
    t.string "post"
    t.integer "gap"
    t.integer "repeat_gap"
    t.integer "min_repeat"
    t.integer "toggle_bit"
    t.string "toggle_bit_mask"
    t.string "repeat_mask"
    t.integer "frequency"
    t.integer "duty_cycle", limit: 1
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["brand_id"], name: "index_remotes_on_brand_id"
    t.index ["submitter_id"], name: "index_remotes_on_submitter_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name", limit: 50, null: false
    t.string "last_name", limit: 50, null: false
    t.string "email", limit: 50, null: false
    t.boolean "admin", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
  end

end
