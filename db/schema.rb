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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20131209222247) do

  create_table "active_admin_comments", :force => true do |t|
    t.string   "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "admin_users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "badges", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "credit_cards", :force => true do |t|
    t.string   "flag"
    t.string   "name"
    t.string   "number"
    t.datetime "date"
    t.integer  "seg_cod"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "user_id"
  end

  create_table "events", :force => true do |t|
    t.string   "name"
    t.datetime "date"
    t.integer  "privacy"
    t.string   "local"
    t.text     "description"
    t.string   "image"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "feeds", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "friendships", :force => true do |t|
    t.integer  "friend_id"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "functionalities", :force => true do |t|
    t.string   "name"
    t.string   "url"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "icon"
  end

  create_table "functionalities_groups", :force => true do |t|
    t.integer "group_id"
    t.integer "functionality_id"
  end

  create_table "groups", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "interests", :force => true do |t|
    t.integer  "type"
    t.integer  "state"
    t.integer  "city"
    t.integer  "region"
    t.integer  "area"
    t.integer  "number_employees"
    t.datetime "foundation_time"
    t.integer  "number_investors"
    t.integer  "invested_startups"
    t.integer  "investor_groups"
    t.integer  "linked_startups"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "investor_groups", :force => true do |t|
    t.string   "name"
    t.integer  "area"
    t.integer  "privacy"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "payments", :force => true do |t|
    t.integer  "type"
    t.integer  "transaction"
    t.datetime "date"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "user_id"
  end

  create_table "posts", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "user_id"
    t.integer  "investor_id"
  end

  create_table "products", :force => true do |t|
    t.string   "name"
    t.string   "image"
    t.text     "description"
    t.string   "video"
    t.string   "subtitle"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "rankings", :force => true do |t|
    t.string   "name"
    t.integer  "point"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "reports", :force => true do |t|
    t.text     "reason"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "status"
  end

  create_table "showcases", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "startups", :force => true do |t|
    t.string   "fantasy_name"
    t.string   "cnpj_duns"
    t.string   "logo"
    t.string   "contact"
    t.integer  "area"
    t.string   "location"
    t.binary   "files"
    t.integer  "message_limit"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "image"
    t.string   "city"
    t.string   "state"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
  end

  create_table "statistics", :force => true do |t|
    t.integer  "hits"
    t.integer  "published_posts"
    t.integer  "post_views"
    t.integer  "post_shared"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "upgrades", :force => true do |t|
    t.string   "account_plan"
    t.string   "credit_card"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "roles_mask"
    t.integer  "group_id"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.integer  "email_policy"
    t.string   "company"
    t.string   "location"
    t.string   "area"
    t.string   "history"
    t.text     "bio"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  add_foreign_key "posts", "users", :name => "posts_user_id_fk", :dependent => :delete

end
