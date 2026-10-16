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

ActiveRecord::Schema[8.1].define(version: 2026_10_14_123856) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "equipment", force: :cascade do |t|
    t.string "name"
    t.string "equipment_type"
    t.string "construction_material"
    t.decimal "size_mm"
    t.decimal "working_width_mm"
    t.decimal "stock_quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "material_fiber_compositions", force: :cascade do |t|
    t.bigint "material_id", null: false
    t.string "fiber_type"
    t.decimal "percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["material_id"], name: "index_material_fiber_compositions_on_material_id"
  end

  create_table "materials", force: :cascade do |t|
    t.string "name"
    t.string "supply_type"
    t.string "color"
    t.decimal "stock_quantity"
    t.string "stock_unit"
    t.decimal "length_per_unit_m"
    t.string "yarn_weight_class"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "project_equipment_requirements", force: :cascade do |t|
    t.bigint "project_id", null: false
    t.bigint "equipment_id", null: false
    t.decimal "required_quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["equipment_id"], name: "index_project_equipment_requirements_on_equipment_id"
    t.index ["project_id"], name: "index_project_equipment_requirements_on_project_id"
  end

  create_table "project_material_requirements", force: :cascade do |t|
    t.bigint "project_id", null: false
    t.bigint "material_id", null: false
    t.decimal "required_quantity"
    t.string "required_unit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["material_id"], name: "index_project_material_requirements_on_material_id"
    t.index ["project_id"], name: "index_project_material_requirements_on_project_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "category"
    t.string "difficulty"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "material_fiber_compositions", "materials"
  add_foreign_key "project_equipment_requirements", "equipment"
  add_foreign_key "project_equipment_requirements", "projects"
  add_foreign_key "project_material_requirements", "materials"
  add_foreign_key "project_material_requirements", "projects"
end
