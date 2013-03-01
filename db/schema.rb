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

ActiveRecord::Schema.define(:version => 20120816101353) do

  create_table "certificates", :force => true do |t|
    t.integer  "employee_id"
    t.text     "certificate_name"
    t.text     "certificate_provider"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "educations", :force => true do |t|
    t.integer  "employee_id"
    t.text     "course_name"
    t.text     "course_institution"
    t.text     "course_percentage"
    t.text     "year_of_passing"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "employee_images", :force => true do |t|
    t.integer  "employee_id"
    t.text     "photo_name"
    t.string   "remote_profimage_url"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.string   "profimage"
  end

  create_table "employees", :force => true do |t|
    t.integer  "user_id"
    t.integer  "manager_id"
    t.text     "name"
    t.text     "age"
    t.text     "gender"
    t.text     "address"
    t.text     "phone_number"
    t.text     "email_id"
    t.text     "date_of_joining"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "role_users", :force => true do |t|
    t.integer  "role_id"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "roles", :force => true do |t|
    t.string   "role_name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "skills", :force => true do |t|
    t.integer  "employee_id"
    t.text     "skill_name"
    t.text     "notes"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.text     "user_name"
    t.text     "password"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
