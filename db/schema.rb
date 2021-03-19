ActiveRecord::Schema.define(version: 2021_03_18_205645) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bandwidths", force: :cascade do |t|
    t.bigint "server_id", null: false
    t.float "value"
    t.text "interface_name"
    t.serial "value_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["server_id"], name: "index_bandwidths_on_server_id"
  end

  create_table "servers", force: :cascade do |t|
    t.text "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "bandwidths", "servers"
end
