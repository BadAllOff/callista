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

ActiveRecord::Schema.define(version: 20161210220413) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.string   "data_fingerprint"
    t.integer  "assetable_id"
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.index ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable", using: :btree
    t.index ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type", using: :btree
  end

  create_table "jumbotrons", force: :cascade do |t|
    t.string   "head_text",   default: "Marketing stuff!"
    t.string   "lead_text",   default: "Cras justo odio, dapibus ac facilisis in, egestas eget quam. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet."
    t.string   "button_text", default: "Get started today"
    t.string   "btn_color",   default: "blue"
    t.datetime "created_at",                                                                                                                                                                                       null: false
    t.datetime "updated_at",                                                                                                                                                                                       null: false
  end

  create_table "pages", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "jumbotron_id"
    t.index ["jumbotron_id"], name: "index_pages_on_jumbotron_id", using: :btree
  end

  create_table "photo_albums", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.json     "photos"
    t.integer  "realty_id"
    t.index ["realty_id"], name: "index_photo_albums_on_realty_id", using: :btree
  end

  create_table "projects", force: :cascade do |t|
    t.string   "title",                    default: "Project title"
    t.text     "preview",                  default: "Project Preview text"
    t.text     "description",              default: "Project description text"
    t.datetime "created_at",                                                    null: false
    t.datetime "updated_at",                                                    null: false
    t.string   "project_img_file_name"
    t.string   "project_img_content_type"
    t.integer  "project_img_file_size"
    t.datetime "project_img_updated_at"
  end

  create_table "realties", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "realty_img_file_name"
    t.string   "realty_img_content_type"
    t.integer  "realty_img_file_size"
    t.datetime "realty_img_updated_at"
  end

  create_table "services", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.text     "preview"
    t.string   "preview_img_file_name"
    t.string   "preview_img_content_type"
    t.integer  "preview_img_file_size"
    t.datetime "preview_img_updated_at"
  end

  create_table "sessions", force: :cascade do |t|
    t.string   "session_id", null: false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["session_id"], name: "index_sessions_on_session_id", unique: true, using: :btree
    t.index ["updated_at"], name: "index_sessions_on_updated_at", using: :btree
  end

  add_foreign_key "pages", "jumbotrons"
end
