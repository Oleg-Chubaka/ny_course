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

ActiveRecord::Schema.define(version: 20180202133603) do

  create_table "authors", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "tesera_url"
  end

  create_table "best_player_images", force: :cascade do |t|
    t.string "img_url"
    t.integer "best_player_id", null: false
    t.index ["best_player_id"], name: "index_best_player_images_on_best_player_id"
  end

  create_table "best_players", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.integer "team_id", null: false
    t.index ["team_id"], name: "index_best_players_on_team_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name", null: false
  end

  create_table "categories_oleg_games", force: :cascade do |t|
    t.integer "oleg_game_id", null: false
    t.integer "category_id", null: false
    t.index ["category_id"], name: "index_categories_oleg_games_on_category_id"
    t.index ["oleg_game_id"], name: "index_categories_oleg_games_on_oleg_game_id"
  end

  create_table "divisions", force: :cascade do |t|
    t.string "name", null: false
    t.string "info"
    t.string "link_to_source"
    t.string "img_url"
    t.integer "ilya_team_id", null: false
    t.index ["ilya_team_id"], name: "index_divisions_on_ilya_team_id"
  end

  create_table "game_images", force: :cascade do |t|
    t.string "img_url"
    t.integer "oleg_game_id", null: false
    t.boolean "main", default: false, null: false
    t.index ["oleg_game_id"], name: "index_game_images_on_oleg_game_id"
  end

  create_table "ilya_teams", force: :cascade do |t|
    t.string "name", null: false
    t.string "country", null: false
    t.integer "year_of_foundation", null: false
    t.string "short_info"
    t.string "full_info"
    t.string "link_to_source"
    t.string "img_url"
    t.string "manager", null: false
  end

  create_table "oleg_games", force: :cascade do |t|
    t.string "name", null: false
    t.text "review", null: false
    t.integer "price", default: 150, null: false
    t.integer "hours", default: 1, null: false
    t.float "rating", null: false
    t.integer "author_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "status", default: false, null: false
    t.string "tesera_url"
    t.index ["author_id"], name: "index_oleg_games_on_author_id"
  end

  create_table "partners", force: :cascade do |t|
    t.string "name", null: false
    t.string "link_to_source"
    t.integer "ilya_team_id", null: false
    t.index ["ilya_team_id"], name: "index_partners_on_ilya_team_id"
  end

  create_table "pioneer_images", force: :cascade do |t|
    t.string "img_url"
    t.integer "pioneer_id", null: false
    t.index ["pioneer_id"], name: "index_pioneer_images_on_pioneer_id"
  end

  create_table "pioneers", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
  end

  create_table "solar_system_object_images", force: :cascade do |t|
    t.string "img_url"
    t.integer "solar_system_object_id", null: false
    t.index ["solar_system_object_id"], name: "index_solar_system_object_images_on_solar_system_object_id"
  end

  create_table "solar_system_objects", force: :cascade do |t|
    t.string "name", null: false
    t.string "opening_date", null: false
    t.string "distance_from_sun", null: false
    t.string "distance_from_earth", null: false
    t.string "weight", null: false
    t.text "notes", null: false
    t.integer "pioneer_id", null: false
    t.index ["pioneer_id"], name: "index_solar_system_objects_on_pioneer_id"
  end

  create_table "solar_system_objects_images", force: :cascade do |t|
    t.string "img_url"
    t.integer "solar_system_object_id", null: false
    t.index ["solar_system_object_id"], name: "index_solar_system_objects_images_on_solar_system_object_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "project_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "team_images", force: :cascade do |t|
    t.string "img_url"
    t.integer "team_id", null: false
    t.index ["team_id"], name: "index_team_images_on_team_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name", null: false
    t.string "country", null: false
    t.string "foundation_date", null: false
    t.string "trener", null: false
    t.string "rating", null: false
    t.text "notes", null: false
  end

end
