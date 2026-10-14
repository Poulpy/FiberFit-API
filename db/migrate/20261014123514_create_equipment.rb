class CreateEquipment < ActiveRecord::Migration[8.1]
  def change
    create_table :equipment do |t|
      t.string :name
      t.string :equipment_type
      t.string :construction_material
      t.decimal :size_mm
      t.decimal :working_width_mm
      t.decimal :stock_quantity

      t.timestamps
    end
  end
end
