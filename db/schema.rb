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

ActiveRecord::Schema.define(version: 2023_06_08_073243) do

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "bills", force: :cascade do |t|
    t.integer "room_charge"
    t.integer "roomservice_charge"
    t.integer "restaurant_charge"
    t.integer "bar_charge"
    t.integer "misc_charge"
    t.integer "iflatecheckout_charge"
    t.integer "total_charge"
    t.datetime "payment_date"
    t.string "payment_mode"
    t.string "creditcard_number"
    t.date "creditcard_expiry"
    t.string "transaction_id"
    t.string "transaction_status"
    t.integer "booking_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["booking_id"], name: "index_bills_on_booking_id"
  end

  create_table "bookings", force: :cascade do |t|
    t.datetime "estarrival"
    t.datetime "estdeparture"
    t.datetime "checkin"
    t.datetime "checkout"
    t.integer "numofadults"
    t.integer "numofchild"
    t.text "specialconcern"
    t.string "bookingstatus", default: "pending"
    t.integer "hotel_id", null: false
    t.integer "room_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["hotel_id"], name: "index_bookings_on_hotel_id"
    t.index ["room_id"], name: "index_bookings_on_room_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "employee_roles", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.date "dob"
    t.string "gender"
    t.string "phonenumber"
    t.string "email"
    t.string "password"
    t.integer "salary"
    t.integer "hotel_id", null: false
    t.integer "employeerole_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["employeerole_id"], name: "index_employees_on_employeerole_id"
    t.index ["hotel_id"], name: "index_employees_on_hotel_id"
  end

  create_table "feedbacks", force: :cascade do |t|
    t.float "ratings"
    t.text "comments"
    t.integer "booking_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["booking_id"], name: "index_feedbacks_on_booking_id"
  end

  create_table "guests", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "gender"
    t.string "phonenumber"
    t.string "aadharnumber"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "booking_id", null: false
    t.integer "hotel_id"
    t.integer "room_id"
    t.index ["booking_id"], name: "index_guests_on_booking_id"
    t.index ["hotel_id"], name: "index_guests_on_hotel_id"
    t.index ["room_id"], name: "index_guests_on_room_id"
  end

  create_table "hotels", force: :cascade do |t|
    t.string "name"
    t.text "address"
    t.string "postalcode"
    t.string "city"
    t.string "country"
    t.integer "totalrooms"
    t.string "phonenumber"
    t.float "starrating"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "owner_id", null: false
    t.index ["owner_id"], name: "index_hotels_on_owner_id"
  end

  create_table "owners", force: :cascade do |t|
    t.text "owned_hotels"
    t.integer "numofhotels"
    t.string "first_name"
    t.string "last_name"
    t.integer "age"
    t.string "phonenumber"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.string "occupancy"
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "roomtype_id", null: false
    t.integer "hotel_id", null: false
    t.index ["hotel_id"], name: "index_rooms_on_hotel_id"
    t.index ["roomtype_id"], name: "index_rooms_on_roomtype_id"
  end

  create_table "roomtypes", force: :cascade do |t|
    t.binary "image"
    t.text "description"
    t.text "facilities"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "hotel_id"
    t.index ["hotel_id"], name: "index_roomtypes_on_hotel_id"
  end

# Could not dump table "users" because of following StandardError
#   Unknown type '' for column 'default'

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "bills", "bookings"
  add_foreign_key "bookings", "hotels"
  add_foreign_key "bookings", "rooms"
  add_foreign_key "bookings", "users"
  add_foreign_key "guests", "hotels"
  add_foreign_key "guests", "rooms"
  add_foreign_key "roomtypes", "hotels"
end
