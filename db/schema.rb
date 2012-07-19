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

ActiveRecord::Schema.define(:version => 20120719143710) do

  create_table "documents", :force => true do |t|
    t.string   "title"
    t.string   "descriptif"
    t.date     "date"
    t.string   "url"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "documents_dossiers", :id => false, :force => true do |t|
    t.integer "document_id", :null => false
    t.integer "dossier_id",  :null => false
  end

  add_index "documents_dossiers", ["dossier_id", "document_id"], :name => "index_documents_dossiers_on_dossier_id_and_document_id", :unique => true

  create_table "documents_tags", :id => false, :force => true do |t|
    t.integer "document_id", :null => false
    t.integer "tag_id",      :null => false
  end

  add_index "documents_tags", ["document_id", "tag_id"], :name => "index_documents_tags_on_document_id_and_tag_id", :unique => true

  create_table "dossiers_tags", :id => false, :force => true do |t|
    t.integer "dossier_id", :null => false
    t.integer "tag_id",     :null => false
  end

  add_index "dossiers_tags", ["dossier_id", "tag_id"], :name => "index_dossiers_tags_on_dossier_id_and_tag_id", :unique => true

  create_table "positions", :force => true do |t|
    t.string  "description"
    t.string  "type"
    t.integer "emplacement_id"
  end

  add_index "positions", ["emplacement_id"], :name => "index_positions_on_emplacement_id", :unique => true

  create_table "tags", :force => true do |t|
    t.string "nom"
  end

end
