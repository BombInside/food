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

ActiveRecord::Schema.define(version: 20160720193855) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "delayed_jobs", force: true do |t|
    t.integer  "priority",   default: 0, null: false
    t.integer  "attempts",   default: 0, null: false
    t.text     "handler",                null: false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "delayed_jobs", ["priority", "run_at"], name: "delayed_jobs_priority", using: :btree

  create_table "events", force: true do |t|
    t.string   "title"
    t.datetime "start_date"
    t.boolean  "posted"
    t.text     "desctiption"
    t.integer  "restoraunt_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "event_title_file_name"
    t.string   "event_title_content_type"
    t.integer  "event_title_file_size"
    t.datetime "event_title_updated_at"
  end

  add_index "events", ["restoraunt_id"], name: "index_events_on_restoraunt_id", using: :btree
  add_index "events", ["user_id"], name: "index_events_on_user_id", using: :btree

  create_table "galleries", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "user_id"
    t.integer  "post_category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "galleries", ["post_category_id"], name: "index_galleries_on_post_category_id", using: :btree
  add_index "galleries", ["user_id"], name: "index_galleries_on_user_id", using: :btree

  create_table "post_categories", force: true do |t|
    t.integer  "user_id"
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "post_categories", ["user_id"], name: "index_post_categories_on_user_id", using: :btree

  create_table "posts", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.integer  "user_id"
    t.integer  "post_category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "posts", ["post_category_id"], name: "index_posts_on_post_category_id", using: :btree
  add_index "posts", ["user_id"], name: "index_posts_on_user_id", using: :btree

  create_table "reservations", force: true do |t|
    t.date     "res_date"
    t.time     "res_time"
    t.string   "restoraunt"
    t.integer  "pers_count"
    t.string   "cont_email"
    t.string   "cont_name"
    t.string   "cont_phone"
    t.text     "cont_message"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "reservations", ["user_id"], name: "index_reservations_on_user_id", using: :btree

  create_table "restoraunts", force: true do |t|
    t.integer  "user_id"
    t.integer  "reservation_id"
    t.string   "title"
    t.string   "phone"
    t.time     "w_time_start"
    t.time     "w_time_end"
    t.time     "wr_time_start"
    t.time     "wr_time_end"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "res_logo_id"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
  end

  add_index "restoraunts", ["reservation_id"], name: "index_restoraunts_on_reservation_id", using: :btree
  add_index "restoraunts", ["user_id"], name: "index_restoraunts_on_user_id", using: :btree

  create_table "special_promotions", force: true do |t|
    t.datetime "prom_start_date"
    t.datetime "prom_end_date"
    t.string   "prom_title"
    t.string   "old_price"
    t.string   "new_price"
    t.integer  "user_id"
    t.integer  "restoraunt_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "special_promotions", ["restoraunt_id"], name: "index_special_promotions_on_restoraunt_id", using: :btree
  add_index "special_promotions", ["user_id"], name: "index_special_promotions_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "votes", force: true do |t|
    t.integer  "votable_id"
    t.string   "votable_type"
    t.integer  "voter_id"
    t.string   "voter_type"
    t.boolean  "vote_flag"
    t.string   "vote_scope"
    t.integer  "vote_weight"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "votes", ["votable_id", "votable_type", "vote_scope"], name: "index_votes_on_votable_id_and_votable_type_and_vote_scope", using: :btree
  add_index "votes", ["voter_id", "voter_type", "vote_scope"], name: "index_votes_on_voter_id_and_voter_type_and_vote_scope", using: :btree

end
