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

ActiveRecord::Schema.define(:version => 20130321161859) do

  create_table "delayed_jobs", :force => true do |t|
    t.integer  "priority",   :default => 0
    t.integer  "attempts",   :default => 0
    t.text     "handler"
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  add_index "delayed_jobs", ["priority", "run_at"], :name => "delayed_jobs_priority"

  create_table "taverna_player_run_ports", :force => true do |t|
    t.string   "name"
    t.string   "value"
    t.string   "port_type"
    t.integer  "run_id"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
    t.integer  "depth",             :default => 0
    t.text     "metadata"
  end

  add_index "taverna_player_run_ports", ["run_id"], :name => "index_taverna_player_run_ports_on_run_id"

  create_table "taverna_player_runs", :force => true do |t|
    t.string   "run_id"
    t.string   "state",          :default => "pending", :null => false
    t.datetime "create_time"
    t.datetime "start_time"
    t.datetime "finish_time"
    t.integer  "workflow_id",                           :null => false
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
    t.string   "status_message"
  end

  add_index "taverna_player_runs", ["run_id"], :name => "index_taverna_player_runs_on_run_id"

  create_table "workflows", :force => true do |t|
    t.string   "title"
    t.string   "author"
    t.text     "description"
    t.string   "file"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
