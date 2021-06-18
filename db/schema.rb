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

ActiveRecord::Schema.define(version: 2021_05_28_061830) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "inquiries", force: :cascade do |t|
    t.datetime "inquiried_at", null: false
    t.string "from_name", null: false
    t.string "assignee", null: false
    t.datetime "first_replied_at", null: false
    t.datetime "first_interactioned_at", null: false
    t.text "summary", null: false
    t.text "content", null: false
    t.string "slack_url", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["assignee"], name: "index_inquiries_on_assignee"
    t.index ["from_name"], name: "index_inquiries_on_from_name"
    t.index ["inquiried_at"], name: "index_inquiries_on_inquiried_at"
  end

end
