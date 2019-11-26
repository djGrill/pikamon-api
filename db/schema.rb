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

ActiveRecord::Schema.define(version: 2019_11_26_051731) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "pikamon_types", force: :cascade do |t|
    t.string "name"
    t.datetime "deleted_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["deleted_at"], name: "index_pikamon_types_on_deleted_at"
  end

  create_table "pikamon_wilds", force: :cascade do |t|
    t.bigint "pikamon_id", null: false
    t.bigint "user_id", null: false
    t.integer "hp"
    t.integer "cp"
    t.datetime "deleted_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["deleted_at"], name: "index_pikamon_wilds_on_deleted_at"
    t.index ["pikamon_id"], name: "index_pikamon_wilds_on_pikamon_id"
    t.index ["user_id"], name: "index_pikamon_wilds_on_user_id"
  end

  create_table "pikamons", force: :cascade do |t|
    t.string "number"
    t.string "name"
    t.bigint "pikamon_type_id", null: false
    t.text "image_url"
    t.datetime "deleted_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["deleted_at"], name: "index_pikamons_on_deleted_at"
    t.index ["pikamon_type_id"], name: "index_pikamons_on_pikamon_type_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "uuid"
    t.string "username"
    t.datetime "deleted_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["deleted_at"], name: "index_users_on_deleted_at"
  end

  add_foreign_key "pikamon_wilds", "pikamons"
  add_foreign_key "pikamon_wilds", "users"
  add_foreign_key "pikamons", "pikamon_types"
end
