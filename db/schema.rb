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

ActiveRecord::Schema.define(version: 2020_09_07_015106) do

  create_table "configs", force: :cascade do |t|
    t.string "type", default: "Config", null: false
    t.text "settings"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "disk_titles", force: :cascade do |t|
    t.string "name", null: false
    t.integer "duration"
    t.integer "title_id", null: false
    t.integer "size", default: 0, null: false
    t.bigint "mkv_progress_id"
    t.bigint "disk_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["disk_id"], name: "index_disk_titles_on_disk_id"
    t.index ["mkv_progress_id"], name: "index_disk_titles_on_mkv_progress_id"
  end

  create_table "disks", force: :cascade do |t|
    t.string "name"
    t.string "disk_name"
    t.string "workflow_state"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "episodes", force: :cascade do |t|
    t.string "name"
    t.string "overview"
    t.string "still_path"
    t.string "file_path"
    t.string "workflow_state"
    t.integer "episode_number"
    t.integer "the_movie_db_id"
    t.date "air_date"
    t.bigint "season_id"
    t.bigint "disk_title_id"
    t.index ["disk_title_id"], name: "index_episodes_on_disk_title_id"
    t.index ["season_id"], name: "index_episodes_on_season_id"
  end

  create_table "mkv_progresses", force: :cascade do |t|
    t.string "name"
    t.float "percentage"
    t.datetime "completed_at"
    t.datetime "failed_at"
    t.text "message"
    t.bigint "disk_title_id"
    t.bigint "disk_id"
    t.string "progressable_type"
    t.bigint "progressable_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["disk_id"], name: "index_mkv_progresses_on_disk_id"
    t.index ["disk_title_id"], name: "index_mkv_progresses_on_disk_title_id"
    t.index ["progressable_type", "progressable_id"], name: "index_mkv_progresses_on_progressable_type_and_progressable_id"
  end

  create_table "seasons", force: :cascade do |t|
    t.string "name"
    t.string "overview"
    t.string "poster_path"
    t.integer "the_movie_db_id"
    t.integer "season_number"
    t.date "air_date"
    t.bigint "tv_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["tv_id"], name: "index_seasons_on_tv_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.string "config_type"
    t.bigint "config_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["config_type", "config_id"], name: "index_users_on_config_type_and_config_id"
  end

  create_table "videos", force: :cascade do |t|
    t.string "title"
    t.string "original_title"
    t.string "poster_path"
    t.string "backdrop_path"
    t.string "overview"
    t.string "type"
    t.string "episode_distribution_runtime"
    t.integer "the_movie_db_id"
    t.integer "movie_runtime"
    t.date "release_date"
    t.date "episode_first_air_date"
    t.datetime "synced_on"
    t.bigint "disk_title_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["disk_title_id"], name: "index_videos_on_disk_title_id"
    t.index ["type", "the_movie_db_id"], name: "index_videos_on_type_and_the_movie_db_id", unique: true
  end

end
