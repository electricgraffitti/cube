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

ActiveRecord::Schema.define(:version => 20110621033949) do

  create_table "admin_sessions", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admins", :force => true do |t|
    t.string   "username"
    t.string   "crypted_password",    :null => false
    t.string   "password_salt",       :null => false
    t.string   "persistence_token",   :null => false
    t.string   "single_access_token", :null => false
    t.string   "perishable_token",    :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "assets", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "attachment_file_name"
    t.string   "attachment_content_type"
    t.integer  "attachment_file_size"
    t.datetime "attachment_updated_at"
    t.integer  "attachable_id"
    t.string   "attachable_type"
  end

  create_table "blogs", :force => true do |t|
    t.string   "title"
    t.string   "sub_title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "permalink"
  end

  create_table "clients", :force => true do |t|
    t.string   "title"
    t.string   "sub_title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "url"
    t.boolean  "active"
    t.integer  "list_order"
    t.boolean  "featured"
    t.boolean  "content_management"
    t.boolean  "ecommerce"
    t.boolean  "web_application"
    t.boolean  "web_design"
    t.boolean  "css"
    t.boolean  "php"
    t.boolean  "html"
    t.boolean  "ruby"
    t.boolean  "flash"
    t.boolean  "sql"
    t.boolean  "wordpress"
    t.boolean  "javascript"
    t.boolean  "rails_framework"
    t.boolean  "app_page"
    t.boolean  "ecommerce_page"
    t.boolean  "design_page"
    t.boolean  "logo_branding"
    t.boolean  "marketing"
    t.boolean  "marketing_page"
  end

  create_table "code_blogs", :force => true do |t|
    t.string   "title"
    t.string   "sub_title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "tag"
    t.string   "permalink"
  end

  create_table "employees", :force => true do |t|
    t.string   "name"
    t.string   "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "headers", :force => true do |t|
    t.string   "page"
    t.string   "header"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "quotes", :force => true do |t|
    t.string   "name"
    t.string   "company"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "services", :force => true do |t|
    t.string   "title"
    t.string   "sub_title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "service_order"
  end

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "states", :force => true do |t|
    t.string   "abbreviation", :limit => 2
    t.string   "full_name"
    t.boolean  "display",                   :default => true
    t.integer  "created_by"
    t.integer  "updated_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
