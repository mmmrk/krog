# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100623171234) do

  create_table "_reviews_old_20100623", :force => true do |t|
    t.integer  "rating"
    t.date     "visit_date"
    t.text     "comment"
    t.integer  "establishment_id"
    t.integer  "category_id"
    t.integer  "clientele_id"
    t.integer  "sound_level_id"
    t.integer  "hygiene_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "rating_id"
  end

  create_table "beers", :force => true do |t|
    t.string   "name"
    t.integer  "sort_id"
    t.integer  "country_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clienteles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "countries", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "establishments", :force => true do |t|
    t.string   "name"
    t.string   "locale"
    t.string   "city"
    t.integer  "wardrobe_fee"
    t.integer  "entrance_fee"
    t.time     "entrance_fee_start"
    t.text     "comment"
    t.integer  "age_limit"
    t.integer  "category_id"
    t.integer  "tapped_beer_id"
    t.integer  "bottled_beer_id"
    t.integer  "tapped_beer_price"
    t.integer  "bottled_beer_price"
    t.integer  "opening_hour_id"
    t.integer  "closing_hour_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hours", :force => true do |t|
    t.time     "monday"
    t.time     "tuesday"
    t.time     "wednesday"
    t.time     "thursday"
    t.time     "friday"
    t.time     "saturday"
    t.time     "sunday"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hygienes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "alias"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ratings", :force => true do |t|
    t.integer  "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reviewers", :force => true do |t|
    t.integer  "person_id"
    t.integer  "review_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reviews", :force => true do |t|
    t.date     "visit_date"
    t.text     "comment"
    t.integer  "establishment_id"
    t.integer  "category_id"
    t.integer  "clientele_id"
    t.integer  "sound_level_id"
    t.integer  "hygiene_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "rating_id"
  end

  create_table "sorts", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sound_levels", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "todos", :force => true do |t|
    t.string   "label"
    t.text     "details"
    t.string   "tag"
    t.boolean  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
