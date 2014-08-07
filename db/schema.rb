# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140807032547) do

  create_table "anatomy_images", force: true do |t|
    t.string   "name"
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "app_skins", force: true do |t|
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  create_table "equipment", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "exercise_dump", force: true do |t|
    t.string  "name"
    t.string  "alsoKnownAs"
    t.string  "exerciseType"
    t.string  "targetMuscle"
    t.string  "otherMuscles"
    t.string  "rating"
    t.string  "mechanicsType"
    t.string  "equipment"
    t.string  "level"
    t.string  "sport"
    t.string  "force"
    t.string  "guideContent"
    t.string  "guideImage"
    t.string  "photoMale1"
    t.string  "photoMale2"
    t.string  "photoFemale1"
    t.string  "photoFemale2"
    t.integer "level_id"
    t.integer "exercise_type_id"
    t.integer "primary_mucle_id"
    t.integer "mechanics_type_id"
    t.integer "equipment_id"
    t.integer "force_id"
  end

  create_table "exercise_images", force: true do |t|
    t.string   "name"
    t.string   "gender"
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "exercise_id"
  end

  create_table "exercise_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "exercises", force: true do |t|
    t.string   "name"
    t.string   "also_known_as"
    t.integer  "exercise_type_id"
    t.integer  "rating"
    t.integer  "mechanics_type_id"
    t.integer  "equipment_id"
    t.integer  "level_id"
    t.text     "benefits"
    t.integer  "anatomy_image_id"
    t.boolean  "has_timer_countdown"
    t.integer  "primary_muscle_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "force_type_id"
    t.integer  "primary_metric_type_id"
    t.integer  "secondary_metric_type_id"
  end

  create_table "force_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "instructions", force: true do |t|
    t.integer  "exercise_id"
    t.text     "instruction"
    t.integer  "step_number"
    t.boolean  "is_tip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "intensities", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "levels", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mechanics_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "metric_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "muscles", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "program_histories", force: true do |t|
    t.integer  "user_id"
    t.integer  "program_id"
    t.integer  "workout_id"
    t.integer  "workout_exercise_id"
    t.integer  "set_num"
    t.float    "time_val"
    t.float    "distance_val"
    t.float    "weight_val"
    t.integer  "rep_val"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "skipped"
    t.integer  "exercise_id"
  end

  create_table "program_images", force: true do |t|
    t.string   "name"
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "programs", force: true do |t|
    t.string   "name"
    t.integer  "program_image_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "secondary_muscles", force: true do |t|
    t.integer  "exercise_id"
    t.integer  "muscle_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "set_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_programs", force: true do |t|
    t.integer  "program_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "last_used"
    t.datetime "commenced"
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.date     "date_of_birth"
    t.binary   "gender"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "uid"
    t.integer  "time_zone"
  end

  create_table "workout_exercises", force: true do |t|
    t.integer  "exercise_id"
    t.integer  "workout_id"
    t.integer  "order"
    t.integer  "intensity_id"
    t.integer  "num_sets"
    t.integer  "num_reps"
    t.float    "time"
    t.float    "distance"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "subtitle"
    t.float    "rest_time"
    t.integer  "set_type_id"
    t.integer  "alternative_exercise_id"
  end

  create_table "workouts", force: true do |t|
    t.string   "name"
    t.integer  "program_id"
    t.integer  "day"
    t.integer  "week"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
